inherit entity-utils
#SRC_URI:remove:olympus-nuvoton = "git://github.com/openbmc/phosphor-host-ipmid"
#SRC_URI:prepend:olympus-nuvoton = "git://github.com/Nuvoton-Israel/phosphor-host-ipmid"

#SRCREV := "3f553e155500938a51a06173633c51be87ec463a"

FILESEXTRAPATHS:append:olympus-nuvoton := "${THISDIR}/${PN}:"

DEPENDS:append:olympus-nuvoton = " \
    ${@entity_enabled(d, '', 'olympus-nuvoton-yaml-config')}"

EXTRA_OECONF:olympus-nuvoton = " \
    --enable-boot-flag-safe-mode-support \
    ${@entity_enabled(d, '', 'SENSOR_YAML_GEN=${STAGING_DIR_HOST}${datadir}/olympus-nuvoton-yaml-config/ipmi-sensors.yaml')} \
    ${@entity_enabled(d, '', 'FRU_YAML_GEN=${STAGING_DIR_HOST}${datadir}/olympus-nuvoton-yaml-config/ipmi-fru-read.yaml')} \
    "
PACKAGECONFIG:append:olympus-entity = " dynamic-sensors"

SRC_URI:append:olympus-nuvoton = " file://phosphor-ipmi-host.service"
#SRC_URI:append:olympus-nuvoton = " file://0001-add-watchdog-sensor-type.patch"

SYSTEMD_SERVICE:${PN}:append:olympus-nuvoton = " phosphor-ipmi-host.service"
SYSTEMD_LINK:${PN}:remove:olympus-nuvoton += "${@compose_list_zip(d, 'SOFT_FMT', 'OBMC_HOST_INSTANCES')}"
SYSTEMD_SERVICE:${PN}:remove:olympus-nuvoton += "xyz.openbmc_project.Ipmi.Internal.SoftPowerOff.service"

do_install:append:olympus-nuvoton() {
    install -d ${D}${systemd_unitdir}/system/
    install -m 0644 ${WORKDIR}/phosphor-ipmi-host.service \
        ${D}${systemd_unitdir}/system
}

do_install:append:olympus-entity(){
    install -d ${D}${includedir}/phosphor-ipmi-host
    install -m 0644 -D ${S}/sensorhandler.hpp ${D}${includedir}/phosphor-ipmi-host
    install -m 0644 -D ${S}/selutility.hpp ${D}${includedir}/phosphor-ipmi-host
}
