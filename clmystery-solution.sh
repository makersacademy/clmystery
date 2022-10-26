#!/usr/bin/env bash

grep CLUE crimescene

# CLUE: Found a wallet believed to belong to the killer: no ID, just
# loose change, and membership cards for AAA, Delta SkyMiles, the local
# library, and the Museum of Bash History. The cards are totally untraceable
# and have no name, for some reason.

CLUE2=$(
    comm -12 <(sort memberships/AAA) <(sort memberships/Delta_SkyMiles) |
    comm -12 - <(sort memberships/Terminal_City_Library) |
    comm -12 - <(sort memberships/Museum_of_Bash_History)
)

# CLUE: Questioned the barista at the local coffee shop. He said a woman left
# right before they heard the shots. The name on her latte was Annabel, she
# had blond spiky hair and a New Zealand accent.

grep Annabel people | grep '\tF\t'
# Annabel Sun	F	26	Hart Place, line 40
# Annabel Church	F	38	Buckingham Place, line 179

head -n40 streets/Hart_Place | tail -n1
# SEE INTERVIEW #47246024

cat interviews/interview-47246024
# Ms. Sun has brown hair and is not from New Zealand.  Not the witness from the cafe.

head -n179 streets/Buckingham_Place | tail -n1
# SEE INTERVIEW #699607

cat interviews/interview-699607
# Interviewed Ms. Church at 2:04 pm.  Witness stated that she did not see anyone she could identify
# as the shooter, that she ran away as soon as the shots were fired.
# However, she reports seeing the car that fled the scene. Describes it as a blue Honda, with a
# license plate that starts with "L337" and ends with "9"

CLUE3=$(
    grep -A5 'License Plate L337[0-9A-Z]*9' vehicles |
    grep -A4 'Make: Honda' |
    grep -A3 'Color: Blue' |
    grep Owner |
    cut -d ' ' -f 2-
)

SUSPECTS=$(
    comm -12 <(echo "$CLUE2" | sort ) <(echo "$CLUE3" | sort)
)

# CLUE: Footage from an ATM security camera is blurry but shows that
# the perpetrator is a tall male, at least 6'.

SOLUTION=$(
    grep "$SUSPECTS" people | grep '\tM\t' | cut -f1
)

printf "\nSOLUTION: " >&2
echo "$SOLUTION" | tee /dev/stderr | $(command -v md5 || command -v md5sum) | grep -qif /dev/stdin ../encoded && echo CORRECT\! GREAT WORK, GUMSHOE. || echo SORRY, TRY AGAIN.

# Solution: Jeremy Bowers