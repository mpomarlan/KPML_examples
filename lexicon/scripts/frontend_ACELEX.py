import os, os.path
import sys

import megalex
import datetime

#TODO watch out for malformed predicates with missing brackets: should perhaps report an error.

def aceGender(s):
    if "undef" == s:
        return "U"
    if "neutr" == s:
        return "N"
    if "human" == s:
        return "H"
    if "masc" == s:
        return "M"
    if "fem" == s:
        return "F"
    return "U"

def addACEPredicate(megalexicon, predicate):
    predicate = predicate.strip()
    leftBracket = predicate.find('(')
    rightBracket = predicate.rfind(')')
    if -1 in [leftBracket, rightBracket]:
        # for now, just ignore a malformed predicate
        return megalexicon
    args = predicate[leftBracket + 1: rightBracket].split(',')
    args = [x.strip(" \"\'\n\t\r") for x in args]
    predicate = predicate[:leftBracket]
    num = len(args)
    # for now, ignoring unrecognized predicates, or predicates with the wrong number of arguments
    if ('adv', 2) == (predicate, num):
        lemma = (args[1], 'ADV')
        megalexicon = megalex.mergeMegaLexicons(megalexicon, {lemma: {'positive': args[0]}})
    if ('adv_comp', 2) == (predicate, num):
        lemma = (args[1], 'ADV')
        megalexicon = megalex.mergeMegaLexicons(megalexicon, {lemma: {'comparative': args[0]}})
    if ('adv_sup', 2) == (predicate, num):
        lemma = (args[1], 'ADV')
        megalexicon = megalex.mergeMegaLexicons(megalexicon, {lemma: {'superlative': args[0]}})
    if ('adj_itr', 2) == (predicate, num):
        lemma = (args[1], 'ADJ', 'ITR')
        megalexicon = megalex.mergeMegaLexicons(megalexicon, {lemma: {'transitive':'no', 'positive': args[0]}})
    if ('adj_itr_comp', 2) == (predicate, num):
        lemma = (args[1], 'ADJ', 'ITR')
        megalexicon = megalex.mergeMegaLexicons(megalexicon, {lemma: {'transitive':'no', 'comparative': args[0]}})
    if ('adj_itr_sup', 2) == (predicate, num):
        lemma = (args[1], 'ADJ', 'ITR')
        megalexicon = megalex.mergeMegaLexicons(megalexicon, {lemma: {'transitive':'no', 'superlative': args[0]}})
    if ('adj_tr', 3) == (predicate, num):
        lemma = (args[1], 'ADJ', 'TR')
        megalexicon = megalex.mergeMegaLexicons(megalexicon, {lemma: {'transitive':'yes', 'preposition': args[2], 'positive': args[0].replace('-', ' ')}})
    if ('adj_tr_comp', 3) == (predicate, num):
        lemma = (args[1], 'ADJ', 'TR')
        megalexicon = megalex.mergeMegaLexicons(megalexicon, {lemma: {'transitive':'yes', 'preposition': args[2], 'comparative': args[0].replace('-', ' ')}})
    if ('adj_tr_sup', 3) == (predicate, num):
        lemma = (args[1], 'ADJ', 'TR')
        megalexicon = megalex.mergeMegaLexicons(megalexicon, {lemma: {'transitive':'yes', 'preposition': args[2], 'superlative': args[0].replace('-', ' ')}})
    if ('noun_sg', 3) == (predicate, num):
        lemma = (args[1], 'NOUN', 'CT', aceGender(args[2]))
        megalexicon = megalex.mergeMegaLexicons(megalexicon, {lemma: {'countable':'yes', 'proper': 'no', 'measurement': 'no', 'gender': aceGender(args[2]), ('singular',): args[0]}})
    if ('noun_pl', 3) == (predicate, num):
        lemma = (args[1], 'NOUN', 'CT', aceGender(args[2]))
        megalexicon = megalex.mergeMegaLexicons(megalexicon, {lemma: {'countable':'yes', 'proper': 'no', 'measurement': 'no', 'gender': aceGender(args[2]), ('plural',): args[0]}})
    if ('noun_mass', 3) == (predicate, num):
        lemma = (args[1], 'NOUN', 'NCT', aceGender(args[2]))
        megalexicon = megalex.mergeMegaLexicons(megalexicon, {lemma: {'countable':'no', 'proper': 'no', 'gender': aceGender(args[2]), ('ietsial',): args[0]}})
    if ('mn_sg', 2) == (predicate, num):
        lemma = (args[1], 'NOUN', 'MCT')
        megalexicon = megalex.mergeMegaLexicons(megalexicon, {lemma: {'countable':'yes', 'proper': 'no', 'measurement': 'yes', ('singular',): args[0]}})
    if ('mn_pl', 2) == (predicate, num):
        lemma = (args[1], 'NOUN', 'MCT')
        megalexicon = megalex.mergeMegaLexicons(megalexicon, {lemma: {'countable':'yes', 'proper': 'no', 'measurement': 'yes', ('plural',): args[0]}})
    if ('pn_sg', 3) == (predicate, num):
        lemma = (args[1], 'NOUN', 'PRP', aceGender(args[2]))
        megalexicon = megalex.mergeMegaLexicons(megalexicon, {lemma: {'proper': 'yes', 'gender': aceGender(args[2]), ('singular',): args[0]}})
    if ('pn_pl', 3) == (predicate, num):
        lemma = (args[1], 'NOUN', 'PRP', aceGender(args[2]))
        megalexicon = megalex.mergeMegaLexicons(megalexicon, {lemma: {'proper': 'yes', 'gender': aceGender(args[2]), ('plural',): args[0]}})
    if ('pndef_sg', 3) == (predicate, num):
        lemma = (args[1], 'NOUN', 'PRP', 'THE', aceGender(args[2]))
        megalexicon = megalex.mergeMegaLexicons(megalexicon, {lemma: {'proper': 'yes', 'prefix': 'the', 'gender': aceGender(args[2]), ('singular',): args[0]}})
    if ('pndef_pl', 3) == (predicate, num):
        lemma = (args[1], 'NOUN', 'PRP', 'THE', aceGender(args[2]))
        megalexicon = megalex.mergeMegaLexicons(megalexicon, {lemma: {'proper': 'yes', 'prefix': 'the', 'gender': aceGender(args[2]), ('plural',): args[0]}})
    if ('iv_finsg', 2) == (predicate, num):
        lemma = (args[1], 'VERB', 'ITR')
        megalexicon = megalex.mergeMegaLexicons(megalexicon, {lemma: {'transitive': 'no', ('singular', 'third'): args[0].replace('-', ' ')}})
    if ('iv_infpl', 2) == (predicate, num):
        lemma = (args[1], 'VERB', 'ITR')
        megalexicon = megalex.mergeMegaLexicons(megalexicon, {lemma: {'transitive': 'no', ('infinitive',): args[0].replace('-', ' ')}})
    if ('tv_finsg', 2) == (predicate, num):
        lemma = (args[1], 'VERB', 'TR')
        megalexicon = megalex.mergeMegaLexicons(megalexicon, {lemma: {'transitive': 'yes', ('singular', 'third'): args[0].replace('-', ' ')}})
    if ('tv_infpl', 2) == (predicate, num):
        lemma = (args[1], 'VERB', 'TR')
        megalexicon = megalex.mergeMegaLexicons(megalexicon, {lemma: {'transitive': 'yes', ('infinitive',): args[0].replace('-', ' ')}})
    if ('tv_pp', 2) == (predicate, num):
        lemma = (args[1], 'VERB', 'TR')
        megalexicon = megalex.mergeMegaLexicons(megalexicon, {lemma: {'transitive': 'yes', ('pastp',): args[0].replace('-', ' ')}})
    if ('dv_finsg', 2) == (predicate, num):
        lemma = (args[1], 'VERB', 'DTR')
        megalexicon = megalex.mergeMegaLexicons(megalexicon, {lemma: {'transitive': 'di', ('singular', 'third'): args[0].replace('-', ' ')}})
    if ('dv_infpl', 2) == (predicate, num):
        lemma = (args[1], 'VERB', 'DTR')
        megalexicon = megalex.mergeMegaLexicons(megalexicon, {lemma: {'transitive': 'di', ('infinitive',): args[0].replace('-', ' ')}})
    if ('dv_pp', 2) == (predicate, num):
        lemma = (args[1], 'VERB', 'DTR')
        megalexicon = megalex.mergeMegaLexicons(megalexicon, {lemma: {'transitive': 'di', ('pastp',): args[0].replace('-', ' ')}})
    if ('prep', 2) == (predicate, num):
        lemma = (args[1], 'PREP')
        megalexicon = megalex.mergeMegaLexicons(megalexicon, {lemma: {('prep',): args[0]}})
    return megalexicon

def loadACELexicon(infilePath):
    megalexicon = {}
    lines = open(infilePath).read().splitlines()
    carryover = ""
    for line in lines:
        line = line.strip()
        comm = line.rfind("%")
        if -1 != comm:
            line = line[:comm]
        if ("" == line) or ("%" == line[0]):
            continue
        line = (carryover + ' ' + line).lstrip()
        dot = line.rfind('.')
        if -1 == dot:
            carryover = line
            continue
        else:
            carryover = ""
        predicates = line.split('.')
        carryover = predicates[-1]
        predicates = predicates[:-1]
        for predicate in predicates:
            megalexicon = addACEPredicate(megalexicon, predicate)
    return megalexicon

if 2 > len(sys.argv):
    print("Must supply at least one parameter! Usage: \n\tfrontend_ACELEX.py outfile [infile1 infile2 ...]\n")
    sys.exit(1)

outfilePath = sys.argv[1]

# Make sure the output file exists, because from this point on we assume to be adding to it
if not os.path.isfile(outfilePath):
    with open(outfilePath, "w") as outfile:
        outfile.write("\n")

# Load whatever we already have in the megalexicon, with the intention to next add to it with what we find in the input files
megalexicon = megalex.loadMegaLexicon(outfilePath)

with open(outfilePath + ".mergelog", "w") as logfile:
    logfile.write("%s\n%s\n" % (str(datetime.datetime.now()), str(sys.argv)))
    for infilePath in sys.argv[2:]:
        if os.path.isfile(infilePath):
            print("Processing %s" % infilePath)
            newlexicon = loadACELexicon(infilePath)
            megalexicon = megalex.mergeMegaLexicons(megalexicon, newlexicon, logfile)

print("MegaLexicon updated, storing ...")
megalex.storeMegaLexicon(outfilePath, megalexicon)
print("All done.")
