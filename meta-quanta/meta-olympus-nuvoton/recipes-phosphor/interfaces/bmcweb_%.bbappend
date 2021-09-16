FILESEXTRAPATHS:prepend:olympus-nuvoton := "${THISDIR}/${PN}:"
LIC_FILES_CHKSUM = "file://LICENSE;md5=175792518e4ac015ab6696d16c4f607e"

#SRCREV := "2ebb9683287cf6b1a2f2cc3c077bd99aceefa8dd"

#SRC_URI:append:olympus-nuvoton = " file://0003-Redfish-Add-power-metrics-support.patch"
#SRC_URI:append:olympus-nuvoton = " file://0005-bmcweb-chassis-add-indicatorLED-support.patch"
#SRC_URI:append:olympus-nuvoton = " file://0014-add-config-to-config-virtual-media-buffer-size.patch"
#SRC_URI:append:olympus-nuvoton = " file://0016-manager-do-not-update-value-if-string-is-empty.patch"
SRC_URI:append:olympus-nuvoton = " file://0018-redfish-log_services-fix-createDump-functionality.patch"

# Enable CPU Log support
EXTRA_OEMESON:append = " -Dredfish-cpu-log=enabled"

# Enable Redfish BMC Journal support
EXTRA_OEMESON:append = " -Dredfish-bmc-journal=enabled"

# Enable DBUS log service
#EXTRA_OEMESON:append = " -Dredfish-dbus-log=enabled"

# Enable TFTP
EXTRA_OEMESON:append = " -Dinsecure-tftp-update=enabled"

# Increase body limit for BIOS FW
EXTRA_OEMESON:append = " -Dhttp-body-limit=35"

# Enable Redfish DUMP log service
EXTRA_OEMESON:append = " -Dredfish-dump-log=enabled"

# Buffer size for virtual media
#EXTRA_OEMESON:append = " -Dvm-buffer-size=3"
