FILESEXTRAPATHS:prepend:olympus-nuvoton := "${THISDIR}/${PN}:"

# need upstream
SRC_URI:append:olympus-nuvoton = " file://chassis-cap.override.yml"
SRC_URI:append:olympus-nuvoton = " file://chassis-poh.override.yml"
SRC_URI:append:olympus-nuvoton = " file://0001-create-thread-to-report-InvalidArgument-error.patch"

SRC_URI:append:olympus-nuvoton = " file://sol-default.override.yml"
