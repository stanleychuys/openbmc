SUMMARY = "Phosphor OpenBMC Quanta NVME Power Control Service"
DESCRIPTION = "Phosphor OpenBMC Quanta NVME Power Control Daemon."
PR = "r1"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/files/common-licenses/Apache-2.0;md5=89aea4e17d99a7cacdbeed46a0096b10"

FILESEXTRAPATHS:prepend:olympus-nuvoton := "${THISDIR}/files:"

inherit systemd

DEPENDS += "systemd"
RDEPENDS:${PN} += "libsystemd"
RDEPENDS:${PN} += "bash"

SRC_URI_olympus-nuvoton = " \
    file://init_once.sh \
    file://host-gpio.service \
    "

do_install_olympus-nuvoton() {
    install -d ${D}${bindir}
    install -m 0755 ${WORKDIR}/init_once.sh ${D}${bindir}/

    install -d ${D}${systemd_unitdir}/system/
    install -m 0644 ${WORKDIR}/host-gpio.service ${D}${systemd_unitdir}/system
}

SYSTEMD_PACKAGES = "${PN}"
SYSTEMD_SERVICE:${PN} = "host-gpio.service"
