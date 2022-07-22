import sys
from socket import *

import hashlib


_server = 'localhost'
_port = 4014

#sockobj = socket(AF_INET, SOCK_STREAM)
#sockobj.connect((_server, _port))
#sockobj.close()

def connectToKPML(socketobj):
    socketobj.connect((_server, _port))

def getKPMLOutputFromSemspec(semspec, sockobj):
    sockobj.send(bytes('%s\r\n' % semspec, 'UTF-8'))
    data = sockobj.recv(1024)
    return data.decode('utf-8')


polarities = {'positive', 'negative'}
numbers = {'singular', 'plural'} # TODO smarter ways to infer this?
tenses = {'purpose', 'present', 'present-continuous', 'present-perfect', 'present-perfect-continuous', 'past', 'past-continuous', 'past-perfect', 'past-perfect-continuous', 'future', 'future-in-present', 'future-continuous', 'future-perfect', 'future-perfect-continuous'} # TODO: add the other tense specifiers in KPML OR use KPML's temporal-relation based tense spec
modalities = {None : None,
    "may": ":ability-q nonability :modality-conditionality-q modalitynonconditional :volitionality-q nonvolitional :modal-necessity-q nonnecessity",
    "must": ":ability-q nonability :modality-conditionality-q modalitynonconditional :volitionality-q nonvolitional :modal-necessity-q necessity",
    "will": ":ability-q nonability :modality-conditionality-q modalitynonconditional :volitionality-q volitional :modal-necessity-q nonnecessity",
    "might": ":ability-q nonability :modality-conditionality-q modalityconditional :volitionality-q nonvolitional :modal-necessity-q nonnecessity",
    "should": ":ability-q nonability :modality-conditionality-q modalityconditional :volitionality-q nonvolitional :modal-necessity-q necessity",
    "would": ":ability-q nonability :modality-conditionality-q modalityconditional :volitionality-q volitional :modal-necessity-q nonnecessity",
    "can": ":ability-q ability :modality-conditionality-q modalitynonconditional :volitionality-q nonvolitional :modal-necessity-q nonnecessity",
    "could": ":ability-q ability :modality-conditionality-q modalityconditional :volitionality-q nonvolitional :modal-necessity-q nonnecessity",
} # TODO: are there other modality flags? Should we use the modality flags in the narrative spec rather than the english modal verb?

determiners = {'a', 'all', 'any', 'both', 'each', 'every', 'some', 'that', 'the', 'this', 'zero'} # TODO: are there other determiners?
identifiabilities = {'identifiable', 'nonidentifiable'}
qualityOntoTypes = {'|GUMThing|', '|Age|', '|SimpleQuality|', '|Size|', '|Color|', '|SimpleQuality|', '|gum#ModalQuality|'} # TODO: double check with GUM that the various property ascriptions are all covered.

# TODO: roles @ event type
#   instrument @ directed motion
#   beneficiary @ dispositive material action
#   beneficiary @ directed motion ???
#   ??? @ ownership ascription (e.g. UK has Elizabeth as Queen)

# TODO: I/We/You etc., and appropriately handled agreements between them and verb forms etc.

# TODO: adverbs/manner roles for events

# TODO: passive voice
# TODO: possessive forms (e.g. the Queen's English)
# TODO: appositions (e.g. the Queen's friend, John)
# TODO: "starts with" event relation (e.g. the storm is raging since the sun set)
# TODO: "ends with" event relation (e.g. the storm raged until day broke)
# TODO: "while" event relation (e.g. they slept while the storm raged)
# TODO: property ascriptions as sentences/events (e.g. the spoon is blue)

# TODO: formality/legalistic registers for connectives (e.g. despite vs in spite of vs although vs nevertheless vs nonetheless vs however vs but ...)

# TODO: combining semspecs for several event relations -- but then must decide on a top level

def _normalizeList(semspec):
    if isinstance(semspec,str):
        return semspec
    if isinstance(semspec,list) or isinstance(semspec,set) or isinstance(semspec,tuple):
        semspec = sorted(list(semspec))
        if 1 == len(semspec):
            return _normalizeList(semspec[0])
        retq = '(:AND '
        for s in semspec:
            retq = retq + _normalizeList(s) + ' '
        retq = retq + ')'
        return retq
    return None

def _sanityCheckTensePolarityModality(tense, polarity, modality):
    if (not isinstance(polarity, str)) or (polarity.lower() not in polarities):
        polarity = 'positive'
    if (not isinstance(tense, str)) or (tense.lower() not in tenses):
        tense = 'present-continuous'
    if (not isinstance(modality, str)) or (modality.lower() not in modalities):
        modality = None
    return tense, polarity, modality

# OBSERVATION: the **ignore argument allows the following functions to take an arbitrary set of key parameters. 
# However, only some key parameters are actually used in the semspec generation process. If more are provided, the function quietly ignores them.
# Without the **ignore parameter, any unexpected key triggers an exception. Maybe this is ok, as it is sometimes a signal to debug something in the pipeline, but
# the decision was that the narrative spec may be a little ill-formed and still have the semspec generation forgive minor mistakes.
def becauseReason(event=None, reason=None, polarity='positive', **ignore):
    _, polarity, _ = _sanityCheckTensePolarityModality(None,polarity,None)
    idstr = hashlib.md5(str((polarity, event, reason)).encode('utf-8')).hexdigest()
    return "(RST_{idstr} / |uio#RSTMotivation| :exist-speech-act-q speechact :conditioning-q conditioning :cause-condition-q causecondition :causal-relation-q causalrelation :polarity-value-q {polarity} :|domain| {event} :|range| {reason})".format(idstr=idstr, polarity=polarity, event=event, reason=reason)

def soThatPurpose(event=None, purpose=None, polarity='positive', **ignore):
    _, polarity, _ = _sanityCheckTensePolarityModality(None,polarity,None)
    idstr = hashlib.md5(str((polarity, event, purpose)).encode('utf-8')).hexdigest()
    return "(RST_{idstr} / |uio#RSTPurpose| :exist-speech-act-q speechact :statement-q statement :conditioning-q conditioning :purpose-relation-q purpose :purpose-condition-q purposecondition :cause-condition-q causecondition :causal-relation-q causalrelation :polarity-value-q {polarity} :|domain| {event} :|range| {purpose})".format(idstr=idstr, polarity=polarity, event=event, purpose=purpose)

def despiteOpposition(event=None, opposition=None, polarity='positive', **ignore):
    _, polarity, _ = _sanityCheckTensePolarityModality(None,polarity,None)
    idstr = hashlib.md5(str((polarity, event, opposition)).encode('utf-8')).hexdigest()
    return "(RST_{idstr} / |uio#RSTConcessive| :exist-speech-act-q speechact :statement-q statement :conditioning-q conditioning :concessive-relation-q concession :concessive-condition-q concessive :polarity-value-q {polarity} :FORMALITY-Q FORMAL :LEGALISTIC-Q NONLEGALISTIC :|domain| {event} :|range| {opposition})".format(idstr=idstr, polarity=polarity, event=event, opposition=opposition)

def eventDescription(evType, lexEntry, argMap, tense=None, polarity=None, modality=None, **args):
    tense, polarity, modality = _sanityCheckTensePolarityModality(tense,polarity,modality)
    for r in args.keys():
        args[r] = _normalizeList(args[r])
    idstr = hashlib.md5(str(tuple([evType, lexEntry, tense, polarity, modality] + [args[r] for r in sorted(args.keys())])).encode('utf-8')).hexdigest()
    defaultMap = {"actee": ":|actee| %s", "actor": ":|actor| %s", "beneficiary": ":|beneficiary| %s", "destination": ":|space#direction| (DIRTO_{idstr} / |space#GeneralizedRoute| :spatio-temporal-type-q spatial :source-destination-process-q sourcedestination :|space#relatum| %s)".format(idstr=idstr), "enablement": ":|enablement| %s", "instrument": ":|instrumental| %s", "item": ":|range| %s", "manner": ":|manner| %s", "opposition": ":|concessive| %s", "owner": ":|domain| %s", "source": ":|space#placement| (SRC_{idstr} / |space#GeneralizedLocation| :spatio-temporal-type-q spatial :source-destination-process-q sourcedestination :source-process-q source :|space#hasSpatialModality| (SPMODSRC_{idstr} / |space#NonProjectionAxial|) :|space#relatum| %s)".format(idstr=idstr)}
    defaultMap = {"actee": ":|actee| %s", "actor": ":|actor| %s", "beneficiary": ":|beneficiary| %s", "destination": ":|space#direction| (DIRTO_{idstr} / |space#GeneralizedRoute| :spatio-temporal-type-q spatial :source-destination-process-q sourcedestination :|space#relatum| %s)".format(idstr=idstr), "enablement": ":|enablement| %s", "instrument": ":|instrumental| %s", "item": ":|range| %s", "manner": ":|manner| %s", "opposition": ":|concessive| %s", "owner": ":|domain| %s", "source": ":|space#source| (SRC_{idstr} / |space#GeneralizedLocation| :spatio-temporal-type-q spatial :DIRECTIONAL-RELATION-PHRASE-Q YES :distancing-directional-q distancing  :|space#relatum| %s)".format(idstr=idstr)}
    roles = ""
    tenseDesc = ""
    if tense not in [None, 'purpose']:
        tenseDesc = ":tense %s" % tense
    modalityDesc = ""
    if None != modality:
        modalityDesc = ":|ModalPropertyAscription| (MOD_%s / nonability) %s :modality-polarity %s" % (idstr, str(modalities[modality]), polarity)
    roles = ""
    for r in sorted(args.keys()):
        if None != args[r]:
            strPat = ''
            if r in argMap:
                strPat = argMap[r]
            elif r in defaultMap:
                strPat = defaultMap[r]
            if '' != strPat:
                roles = roles + " " + (strPat % str(args[r]))
    return "(EVT_{idstr} / {evType} :LEX {lexEntry} :polarity-value-q {polarity} {tenseDesc} {modalityDesc} {roles})".format(idstr=idstr, evType=evType, lexEntry=lexEntry, polarity=polarity, tenseDesc=tenseDesc, modalityDesc=modalityDesc, roles=roles)

def dmActing(lexEntry=None, modality=None, polarity='positive', tense='present', **args):
    return eventDescription("|DispositiveMaterialAction|", lexEntry, {}, tense=tense, polarity=polarity, modality=modality, **args)

def creating(lexEntry=None, modality=None, polarity='positive', tense='present', **args):
    return eventDescription("|CreativeMaterialAction|", lexEntry, {}, tense=tense, polarity=polarity, modality=modality, **args)

def ownershipAscription(modality=None, polarity='positive', tense='present', **args):
    return eventDescription("|Ownership|", "HAVE", {}, tense=tense, polarity=polarity, modality=modality, **args)

def naDirectMotionTo(lexEntry=None, modality=None, polarity='positive', tense='present-continuous', **args):
    return eventDescription("|space#NonAffectingDirectedMotion|", lexEntry, {'actor': ':|gum#actor| %s'}, tense=tense, polarity=polarity, modality=modality, **args)


def objectDescription(lexEntry=None, determiner=None, number=None, identifiability=None, materialProps=None, ageProps=None, provenanceProps=None, sizeProps=None, colorProps=None, logicalProps=None, useProps=None, miscProps=None, modalProps=None, owner=None, elaboration=None, source=None, **dontUse):
    if (not isinstance(number, str)) or (number.lower() not in numbers):
        number = 'singular'
    if (not isinstance(determiner, str)) or (determiner.lower() not in determiners):
        determiner = "THE"
    if (not isinstance(identifiability, str)) or (identifiability.lower() not in identifiabilities):
        identifiability = None
    elaboration = _normalizeList(elaboration)
    lexEntry = _normalizeList(lexEntry)
    materialProps = _normalizeList(materialProps)
    ageProps = _normalizeList(ageProps)
    provenanceProps = _normalizeList(provenanceProps)
    sizeProps = _normalizeList(sizeProps)
    colorProps = _normalizeList(colorProps)
    logicalProps = _normalizeList(logicalProps)
    useProps = _normalizeList(useProps)
    miscProps = _normalizeList(miscProps)
    modalProps = _normalizeList(modalProps)
    owner = _normalizeList(owner)
    source = _normalizeList(source)
    qualities = ''
    rels = ''
    if None != elaboration:
        idstr = hashlib.md5(str((lexEntry, determiner, number, identifiability, owner, elaboration)).encode('utf-8')).hexdigest()
        retq = "(OBJ_%s / |uio#Restatement| :|domain| %s :|range| %s)" % (idstr, objectDescription(lexEntry=lexEntry, determiner=determiner, number=number, identifiability=identifiability, materialProps=materialProps, ageProps=ageProps, provenanceProps=provenanceProps, sizeProps=sizeProps, colorProps=colorProps, logicalProps=logicalProps, useProps=useProps, miscProps=miscProps, modalProps=modalProps, owner=owner), elaboration)
        return retq
    if None != source:
        idstr = hashlib.md5(str((source,)).encode('utf-8')).hexdigest()
        rels = rels + ":|space#source| (SRC_{idstr} / |space#GeneralizedLocation| :spatio-temporal-type-q spatial :DIRECTIONAL-RELATION-PHRASE-Q YES :distancing-directional-q distancing  :|space#relatum| {source})".format(idstr=idstr, source=source)
    if None != owner:
        rels = rels + ':|OwnedBy| %s' % owner
    for props, slot in [(materialProps, ':|MaterialPropertyAscription|'), (ageProps, ':|AgePropertyAscription|'), (provenanceProps, ':|ProvenancePropertyAscription|'), (sizeProps, ':|SizePropertyAscription|'), (colorProps, ':|ColorPropertyAscription|'), (logicalProps, ':|LogicalPropertyAscription|'), (useProps, ':|UsePropertyAscription|'), (miscProps, ':|PropertyAscription|'), (modalProps, ':|ModalPropertyAscription|')]:
        if None != props:
            qualities = qualities + slot + " " + props + " "
    idstr = hashlib.md5(str((lexEntry, determiner, identifiability, qualities, owner)).encode('utf-8')).hexdigest()
    if None != identifiability:
        return "(OBJ_{idstr} / |Object| :LEX {lexEntry} :identifiability-q {identifiability} :DETERMINER {determiner} :NUMBER {number} {qualities} {rels})".format(idstr=idstr, lexEntry=lexEntry, determiner=determiner, identifiability=identifiability, number=number, qualities=qualities, rels=rels)
    return "(OBJ_{idstr} / |Object| :LEX {lexEntry} :DETERMINER {determiner} :NUMBER {number} {qualities} {rels})".format(idstr=idstr, lexEntry=lexEntry, determiner=determiner, number=number, qualities=qualities, rels=rels)

def qualityDescription(lexEntry=None, ontoType=None, **dontUse):
    if ontoType not in qualityOntoTypes:
        ontoType = '|GUMThing|'
    idstr = hashlib.md5(str((lexEntry, ontoType)).encode('utf-8')).hexdigest()
    return '(ADJ_{idstr} / {ontoType} :LEX {lexEntry})'.format(idstr=idstr, ontoType=ontoType, lexEntry=lexEntry)

eventRelations = {'isOpposedBy': (despiteOpposition, 'event', 'opposition'), 'isExplainedBy': (becauseReason, 'event', 'reason'), 'isMotivatedBy': (soThatPurpose, 'event', 'purpose')}
participantRelations = {'hasBeneficiary': ('beneficiary',), 'hasAgent': ('actor',), 'hasPatient': ('actee',), 'hasInstrument': ('instrument',), 'hasOpponent': ('opposition',), 'hasDestination': ('destination',), 'hasOwner': ('owner',), 'hasItem': ('item',), 'hasEnablement': ('enablement',), 'hasSource': ('source',)}
eventDataRelations = {'hasLex': ('lexEntry',), 'hasPolarity': ('polarity',), 'hasTense': ('tense',), 'hasModality': ('modality',)}
eventQualityRelations = {'hasManner': ('manner', '|SimpleQuality|')}
qualityRelations = {'hasQuality': ('miscProps', '|SimpleQuality|'), 'hasColor': ('colorProps', '|Color|'), 'hasAge': ('ageProps', '|Age|'), 'hasSize': ('sizeProps', '|Size|'), 'hasProvenance': ('provenanceProps', '|SimpleQuality|'), 'hasLogicalQuality': ('logicalProps', '|GUMThing|'), 'hasModalQuality': ('modalProps', '|gum#ModalQuality|'), 'hasMaterialQuality': ('materialProps', '|GUMThing|'), 'hasUseQuality': ('useProps', '|SimpleQuality|')}
objectRelations = {'isOwnedBy': ('owner',), 'hasElaboration': ('elaboration',), 'hasSource': ('source',)}
objectDataRelations = {'hasLex': ('lexEntry',), 'hasIdentifiability': ('identifiability',), 'hasDeterminer': ('determiner',), 'hasNumber': ('number',), 'qualityType': ('ontoType',)}
eventClasses = {'action': (dmActing,), 'creation': (creating,), 'ownership': (ownershipAscription,), 'motion': (naDirectMotionTo,)}

def semspecsFromNarrativeSpec(triples):
    def _addNotification(agendaItems, notifier, notifee):
        if '_notify' not in agendaItems[notifier]:
            agendaItems[notifier]['_notify'] = set()
        if '_needNotifs' not in agendaItems[notifee]:
            agendaItems[notifee]['_needNotifs'] = 0
        l = len(agendaItems[notifier]['_notify'])
        agendaItems[notifier]['_top'] = False
        agendaItems[notifier]['_notify'].add(notifee)
        if l < len(agendaItems[notifier]['_notify']):
            agendaItems[notifee]['_needNotifs'] = agendaItems[notifee]['_needNotifs'] + 1
    agenda = []
    retq = []
    triples = set(triples)
    agendaItems = {}
    # Generate agenda items from triples. Event relation triples and individual entities get agenda items, other triples are used to populate agenda items.
    # An agenda item includes a function to call at some point in the future, and a list of parameters to call the function with. These parameters may depend on other agenda items,
    # hence why the function call is delayed.
    for t in triples:
        p, s, o = t
        if p in eventRelations:
            if s not in agendaItems:
                agendaItems[s] = {'_notify': set()}
            if o not in agendaItems:
                agendaItems[o] = {'_notify': set()}
            fn, roleS, roleO = eventRelations[p]
            agendaItems[t] = {'_isEventRelation': roleS, '_fn': fn, roleS: agendaItems[s], roleO: agendaItems[o], '_top': True}
            _addNotification(agendaItems, s, t)
            _addNotification(agendaItems, o, t)
        elif p in participantRelations:
            role, = participantRelations[p]
            if s not in agendaItems:
                agendaItems[s] = {'_notifs': set(), '_top': True}
            if o not in agendaItems:
                agendaItems[o] = {'_notifs': set()}
            agendaItems[o]['_fn'] = objectDescription
            if role not in agendaItems[s]:
                agendaItems[s][role] = []
            agendaItems[s][role].append(agendaItems[o])
            _addNotification(agendaItems, o, s)
        elif p in objectRelations:
            role, = objectRelations[p]
            if s not in agendaItems:
                agendaItems[s] = {'_notifs': set(), '_top': True}
            if o not in agendaItems:
                agendaItems[o] = {'_notifs': set()}
            agendaItems[s]['_fn'] = objectDescription
            agendaItems[o]['_fn'] = objectDescription
            if role not in agendaItems[s]:
                agendaItems[s][role] = []
            agendaItems[s][role].append(agendaItems[o])
            _addNotification(agendaItems, o, s)
        elif p in eventQualityRelations:
            role, ontoType = eventQualityRelations[p]
            if s not in agendaItems:
                agendaItems[s] = {'_notify': set(), '_top': True}
            if o not in agendaItems:
                agendaItems[o] = {'_notify': set()}
            if '_fn' not in agendaItems[s]:
                agendaItems[s]['_fn'] = dmActing
            agendaItems[o]['_fn'] = qualityDescription
            agendaItems[o]['ontoType'] = ontoType
            if role not in agendaItems[s]:
                agendaItems[s][role] = []
            agendaItems[s][role].append(agendaItems[o])
            _addNotification(agendaItems, o, s)
        elif p in qualityRelations:
            role, ontoType = qualityRelations[p]
            if s not in agendaItems:
                agendaItems[s] = {'_notify': set(), '_top': True}
            if o not in agendaItems:
                agendaItems[o] = {'_notify': set()}
            agendaItems[s]['_fn'] = objectDescription
            agendaItems[o]['_fn'] = qualityDescription
            agendaItems[o]['ontoType'] = ontoType
            if role not in agendaItems[s]:
                agendaItems[s][role] = []
            agendaItems[s][role].append(agendaItems[o])
            _addNotification(agendaItems, o, s)
        elif (p in eventDataRelations) or (p in objectDataRelations):
            if p in eventDataRelations:
                role, = eventDataRelations[p]
            elif p in objectDataRelations:
                role, = objectDataRelations[p]
            if s not in agendaItems:
                agendaItems[s] = {'_notify': set(), '_top': True}
            agendaItems[s][role] = o
        elif 'construedAs' == p:
            if s not in agendaItems:
                agendaItems[s] = {'_notify': set(), '_top': True}
            fn, = (dmActing,)
            if o in eventClasses:
                fn, = eventClasses[o]
            agendaItems[s]['_fn'] = fn
    # Process agenda items. If an agenda item depends on no other, its function can be called directly and therefore the value of the agenda item is resolved.
    # Once an agenda item is resolved, the other items that depend on its resolved value get a notification.
    # Once an agenda item expects no more notifications, it is placed on the todo list because it can also be resolved.
    todo = [agendaItems[k] for k in agendaItems if ('_needNotifs' not in agendaItems[k]) or (0 == agendaItems[k]['_needNotifs'])]
    while todo:
        cr = todo.pop()
        args = {}
        if ('_isEventRelation' in cr) and (False != cr['_isEventRelation']):
            if 'polarity' in cr[cr['_isEventRelation']]:
                cr['polarity'] = cr[cr['_isEventRelation']]['polarity']
            if 'tense' in cr[cr['_isEventRelation']]:
                cr['tense'] = cr[cr['_isEventRelation']]['tense']
        args = {}
        for k, v in cr.items():
            if '_' != k[0]:
                if isinstance(v, dict):
                    args[k] = v['_logicalForm']
                elif isinstance(v, list):
                    args[k] = []
                    for e in v:
                        if isinstance(e,dict):
                            args[k].append(e['_logicalForm'])
                        else:
                            args[k].append(str(e))
                else:
                    args[k] = str(v)
        if '_fn' not in cr:
            cr['_fn'] = objectDescription
        cr['_logicalForm'] = cr['_fn'](**args)
        if '_notify' in cr:
            for n in cr['_notify']:
                agendaItems[n]['_needNotifs'] = agendaItems[n]['_needNotifs'] - 1
                if 0 == agendaItems[n]['_needNotifs']:
                    todo.append(agendaItems[n])
    return [agendaItems[k]['_logicalForm'] for k in agendaItems if agendaItems[k]['_top']]

def getKPMLOutputFromNarrative(narrativespec):
    semspecs = semspecsFromNarrativeSpec(narrativespec)
    retq = []
    with socket(AF_INET, SOCK_STREAM) as sock:
        connectToKPML(sock)
        for ss in semspecs:
            retq.append(getKPMLOutputFromSemspec(ss, sock))
    return retq

def _dbgGetKPMLOutput(semspec):
    with socket(AF_INET, SOCK_STREAM) as sock:
        connectToKPML(sock)
        retq = (getKPMLOutputFromSemspec(semspec, sock))
    return retq

