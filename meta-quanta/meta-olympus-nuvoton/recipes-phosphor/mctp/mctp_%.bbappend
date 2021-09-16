FILESEXTRAPATHS:prepend:olympus-nuvoton := "${THISDIR}/${PN}:"

SRC_URI += " file://default \
             file://0001-support-smbus-in-mctp-mux.patch "

TARGET_CFLAGS:olympus-nuvoton += "-DMCTP_HAVE_FILEIO"
