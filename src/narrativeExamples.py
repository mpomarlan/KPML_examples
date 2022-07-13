from narrativespec import *

# The small old red spoon
theSmallOldRedSpoon = [('hasColor','spoon','red'), ('hasAge','spoon','old'), ('hasSize','spoon','small'), ('hasLex', 'spoon', 'spoon'), ('hasLex', 'old', 'old'), ('hasLex', 'small', 'small'), ('hasLex', 'red', 'red')]

# NOTE: for some reason, modal qualities, simple qualities, and logical properties don't seem to be generated when other qualities are present, even though they appear in the semspec -- KPML bugfix?
# The big bad wolf -- note that, because of the bug(?) above, bad is smuggled in as a material quality
theBigBadWolf = [('hasMaterialQuality','wolf','bad'),('hasSize','wolf','big'),('hasLex','wolf','wolf'),('hasLex','bad','bad'),('hasLex','big','big')]

# Alice eats lunch
aliceEatsLunch = [('construedAs', 'e', 'action'), ('hasAgent', 'e', 'alice'), ('hasPatient', 'e', 'lunch'), ('hasLex', 'e', 'eat'), ('hasTense', 'e', 'present'), ('hasLex', 'alice', 'alice'), ('hasDeterminer','alice','zero'), ('hasLex', 'lunch', 'lunch'), ('hasDeterminer','lunch','zero')]

# Alice eats lunch with the small old red spoon
aliceEatsLunchWithSpoon = aliceEatsLunch + theSmallOldRedSpoon + [('hasInstrument', 'e', 'spoon')]

# Alice eats lunch with the small old red spoon despite the big bad wolf
# NOTE: actually generated: ALICE eats lunch in spite of the big bad WOLF with the small old red spoon .
# TODO: figure out how to order opponent to come AFTER instrument in the sentence.
aliceEatsLunchWithSpoonDespiteWolf = aliceEatsLunchWithSpoon + theBigBadWolf + [('hasOpponent','e','wolf')]

# Bob has the new spoon
# NOTE: different spoon entities should have different names, even if their lex entry is the same.
bobHasNewSpoon = [('construedAs', 'h', 'ownership'), ('hasOwner', 'h', 'bob'), ('hasItem', 'h', 'spoon2'), ('hasAge','spoon2','new'), ('hasLex', 'bob', 'bob'), ('hasDeterminer', 'bob', 'zero'), ('hasLex', 'spoon2', 'spoon'), ('hasLex', 'new', 'new'), ('hasTense', 'h', 'present')]

# Bob can go to the lake
# NOTE: there is still a bug here in that the actor/agent role is not generated and instead is rendered as [NIL]. Will investigate
bobCanGoToLake = [('construedAs', 'g', 'motion'), ('hasAgent', 'g', 'bob'), ('hasDestination', 'g', 'lake'), ('hasLex', 'g', 'go'), ('hasLex', 'bob', 'bob'), ('hasDeterminer', 'bob', 'zero'), ('hasLex', 'lake', 'lake'), ('hasTense', 'g', 'present'), ('hasModality', 'g', 'can')]

# Alice is eating lunch with the small old red spoon because Bob has the new spoon
# NOTE: actually this should have been rendered as Alice eats ... but perhaps KPML prefers the continuous aspect in a because domain? Will investigate
aliceEatsLunchWithSpoonBecauseBobHasNewSpoon = aliceEatsLunchWithSpoon + bobHasNewSpoon + [('isExplainedBy', 'e', 'h')]

# Alice eats lunch with the small old red spoon though Bob has the new spoon
aliceEatsLunchWithSpoonThoughBobHasNewSpoon = aliceEatsLunchWithSpoon + bobHasNewSpoon + [('isOpposedBy', 'e', 'h')]

# Alice eats lunch so that Bob can go to the lake
aliceEatsLunchSoThatBobCanGoToLake = aliceEatsLunch + bobCanGoToLake + [('isMotivatedBy', 'e', 'g')]

# Bob has the new spoon. Alice eats lunch so that Bob can go to the lake.
# NOTE: for now there's no control over the order in which the sentences are generated. They will appear at the mercy of the python hash gods.
bobHasNewSpoonAliceEatsLunchSoThatBobCanGoToLake = bobHasNewSpoon + aliceEatsLunchSoThatBobCanGoToLake

# Alice eats lunch with the small old red spoon so that Bob can have the new spoon
aliceEatsLunchWithSpoonSoThatBobCanHaveNewSpoon = aliceEatsLunchWithSpoon + bobHasNewSpoon + [('isMotivatedBy', 'e', 'h'), ('hasModality', 'h', 'can')]

aliceAndBobEatLunchAndDinner = aliceEatsLunch + [('hasAgent', 'e', 'bob'), ('hasPatient', 'e', 'dinner'), ('hasLex', 'bob', 'bob'), ('hasDeterminer','bob','zero'), ('hasLex', 'dinner', 'dinner'), ('hasDeterminer','dinner','zero')]

bobHasAlicesSpoon = [('construedAs', 'h', 'ownership'), ('hasOwner', 'h', 'bob'), ('hasItem', 'h', 'spoon'), ('isOwnedBy', 'spoon', 'alice'), ('hasLex', 'bob', 'bob'), ('hasDeterminer', 'bob', 'zero'), ('hasLex', 'spoon', 'spoon'), ('hasLex', 'alice', 'alice'), ('hasDeterminer', 'alice', 'zero'), ('hasTense', 'h', 'present')]

aliceEatsLunchByChewing = aliceEatsLunch + [('hasEnablement', 'e','chewing'), ('hasLex', 'chewing', 'chewing'), ('hasDeterminer', 'chewing', 'zero')]
bobHasNewSpoonByLaw = bobHasNewSpoon + [('hasEnablement', 'h', 'law'), ('hasLex', 'law', 'law'), ('hasDeterminer', 'law', 'zero')]
aliceAndBobCanGoToLakeByCar = bobCanGoToLake + [('hasAgent', 'g', 'alice'), ('hasEnablement', 'g', 'car'), ('hasLex', 'alice', 'alice'), ('hasDeterminer', 'alice', 'zero'), ('hasLex', 'car', 'car'), ('hasDeterminer', 'car', 'zero')]

aliceTakesBobsSpoon = [('construedAs', 't', 'action'), ('hasAgent', 't', 'alice'), ('hasPatient', 't', 'spoon'), ('isOwnedBy', 'spoon', 'bob'), ('hasLex', 't', 'take'), ('hasTense', 't', 'present'), ('hasLex', 'alice', 'alice'), ('hasLex', 'bob', 'bob'), ('hasLex', 'spoon', 'spoon'), ('hasDeterminer', 'alice', 'zero'), ('hasDeterminer', 'bob', 'zero')]

alicesBrotherBob = [('isOwnedBy', 'brother', 'alice'), ('hasElaboration', 'brother', 'bob'), ('hasLex', 'alice', 'alice'), ('hasLex', 'bob', 'bob'), ('hasLex', 'brother', 'brother'), ('hasDeterminer', 'alice', 'zero'), ('hasDeterminer', 'bob', 'zero')]

alicesBrothersBobAndCharlie = [('isOwnedBy', 'brother', 'alice'), ('hasElaboration', 'brother', 'bob'), ('hasElaboration', 'brother', 'charlie'), ('hasLex', 'alice', 'alice'), ('hasLex', 'bob', 'bob'), ('hasLex', 'brother', 'brother'), ('hasLex', 'charlie', 'charlie'), ('hasDeterminer', 'alice', 'zero'), ('hasDeterminer', 'bob', 'zero'), ('hasDeterminer', 'charlie', 'zero'), ('hasNumber', 'brother', 'plural')]


def main():
    for expected, narrspec in [('the small old red spoon', theSmallOldRedSpoon), ('Alice eats lunch.', aliceEatsLunch), ('Alice eats lunch with the small old red spoon.', aliceEatsLunchWithSpoon), ('Alice eats lunch with the small old red spoon despite the big bad wolf.', aliceEatsLunchWithSpoonDespiteWolf), ('Bob has the new spoon.', bobHasNewSpoon), ('Bob can go to the lake.', bobCanGoToLake), ('Alice eats lunch with the small old red spoon because Bob has the new spoon.', aliceEatsLunchWithSpoonBecauseBobHasNewSpoon), ('Alice eats lunch with the small old red spoon though Bob has the new spoon.', aliceEatsLunchWithSpoonThoughBobHasNewSpoon), ('Alice eats lunch so that Bob can go to the lake.', aliceEatsLunchSoThatBobCanGoToLake), ('Bob has the new spoon. Alice eats lunch so that Bob can go to the lake.', bobHasNewSpoonAliceEatsLunchSoThatBobCanGoToLake), ('Alice eats lunch with the small old red spoon so that Bob can have the new spoon.', aliceEatsLunchWithSpoonSoThatBobCanHaveNewSpoon), ('Alice and Bob eat lunch and dinner.', aliceAndBobEatLunchAndDinner), ('Alice eats lunch by chewing.', aliceEatsLunchByChewing), ('Bob has the new spoon by law.', bobHasNewSpoonByLaw), ('Alice and Bob can go to the lake by car.', aliceAndBobCanGoToLakeByCar), ('Alice takes Bob\'s spoon.', aliceTakesBobsSpoon), ('Alice\'s brother Bob.', alicesBrotherBob), ('Alice\'s brothers Bob and Charlie', alicesBrothersBobAndCharlie)]:
        print('--------')
        print("EXPECTED: %s" % expected)
        outputs = getKPMLOutputFromNarrative(narrspec)
        print('ACTUAL: %s' % ' '.join(outputs))
        print('')

if __name__ == '__main__':
    main()

