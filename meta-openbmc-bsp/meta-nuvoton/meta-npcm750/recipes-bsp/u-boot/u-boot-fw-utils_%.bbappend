UBRANCH = "npcm7xx"
# TODO: Replace with Nuvoton repo once created.
SRC_URI = "git://github.com/bjh83/u-boot.git;branch=${UBRANCH}"
SRCREV = "${AUTOREV}"
PV .= "+.${UBRANCH}.+"
