FILESEXTRAPATHS:prepend:olympus-nuvoton := "${THISDIR}/${PN}:"

SRCREV = "e32e33784a1883ee4528b17617df14f3114b0f5e"

SRC_URI:append:olympus-nuvoton = " file://0001-meta-olympus-nuvoton-op-pwrctl-enable-server-power-co.patch"
SRC_URI:append:olympus-nuvoton = " file://0002-skip-Listen-for-BootProgress-signal.patch"

SYSTEMD_SERVICE:${PN} += " \
        op-power-start@.service \
        op-power-stop@.service \
        "

RDEPENDS:${PN} += "bash"

SRC_URI += "file://olympus-power-control.sh"

do_install_olympus-nuvoton() {
    install -d ${D}${bindir}
    install -m 0755 ${WORKDIR}/olympus-power-control.sh ${D}${bindir}/
}
