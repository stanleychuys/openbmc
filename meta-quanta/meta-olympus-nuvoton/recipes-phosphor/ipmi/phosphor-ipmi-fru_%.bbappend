inherit obmc-phosphor-systemd
inherit entity-utils

FILESEXTRAPATHS:prepend:olympus-nuvoton := "${THISDIR}/${PN}:"

DEPENDS:append:olympus-nuvoton = " \
    ${@entity_enabled(d, '', 'olympus-nuvoton-yaml-config')}"

EXTRA_OECONF_olympus-nuvoton = " \
    ${@entity_enabled(d, '', 'YAML_GEN=${STAGING_DIR_HOST}${datadir}/olympus-nuvoton-yaml-config/ipmi-fru-read.yaml')} \
    ${@entity_enabled(d, '', 'PROP_YAML=${STAGING_DIR_HOST}${datadir}/olympus-nuvoton-yaml-config/ipmi-extra-properties.yaml')} \
    "

EEPROM_NAMES = "motherboard bmc"

EEPROMFMT = "system/chassis/{0}"
EEPROM_ESCAPEDFMT = "system-chassis-{0}"
EEPROMS = "${@compose_list(d, 'EEPROMFMT', 'EEPROM_NAMES')}"
EEPROMS_ESCAPED = "${@compose_list(d, 'EEPROM_ESCAPEDFMT', 'EEPROM_NAMES')}"

ENVFMT = "obmc/eeproms/{0}"
ENVF = "${@compose_list(d, 'ENVFMT', 'EEPROMS')}"
SYSTEMD_ENVIRONMENT_FILE:${PN}:append:olympus-nuvoton := " ${@entity_enabled(d, '', ' ${ENVF}')}"

TMPL = "obmc-read-eeprom@.service"
TGT = "${SYSTEMD_DEFAULT_TARGET}"
INSTFMT = "obmc-read-eeprom@{0}.service"
FMT = "../${TMPL}:${TGT}.wants/${INSTFMT}"
LINKS = "${@compose_list(d, 'FMT', 'EEPROMS_ESCAPED')}"
SYSTEMD_LINK:${PN}:append:olympus-nuvoton := " ${@entity_enabled(d, '', ' ${LINKS}')}"
