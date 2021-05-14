FILESEXTRAPATHS_prepend := "${THISDIR}/linux-nuvoton:"

SRC_URI_append_evb-npcm845 = " \
  file://0001-dts-npcm845-dts-update.patch \
  file://0002-support-SGMII-on-EVB-rev-A.patch \
  "
