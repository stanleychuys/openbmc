FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append_evb-npcm845 = " file://0001-phosphor-ipmi-host-Do-not-use-size_t-in-struct-MetaP.patch"

DEPENDS_append_evb-npcm845 = " evb-npcm845-yaml-config"

EXTRA_OECONF_evb-npcm845 = " \
    SENSOR_YAML_GEN=${STAGING_DIR_HOST}${datadir}/evb-npcm845-yaml-config/ipmi-sensors.yaml \
    "

