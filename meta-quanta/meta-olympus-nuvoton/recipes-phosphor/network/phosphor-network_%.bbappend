FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

DEPENDS += "nlohmann-json"

EXTRA_OECONF:append:olympus-nuvoton = " --disable-link-local-autoconfiguration --with-uboot-env"

SRC_URI:append:olympus-nuvoton = " file://0001-Run-after-xyz-openbmc_project-user-path-created.patch"
#SRC_URI:append:olympus-nuvoton = " file://0002-Adding-channel-specific-privilege-to-network.patch"
#SRC_URI:append:olympus-nuvoton = " file://0003-remove-ethernet-disable-enable-control.patch"
