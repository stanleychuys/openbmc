FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append_evb-npcm845 = " file://0001-phosphor-ipmi-host-Do-not-use-size_t-in-struct-MetaP.patch"