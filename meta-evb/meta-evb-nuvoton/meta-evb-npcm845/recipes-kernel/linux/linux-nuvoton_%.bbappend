FILESEXTRAPATHS_prepend := "${THISDIR}/linux-nuvoton:"

SRC_URI_append_evb-npcm845 = " \
  file://evb-npcm845.cfg \
  file://0001-dts-evb-npcm845-update-dts.patch \
  file://0002-support-SGMII-on-EVB-rev-A.patch \
  file://0003-dts-evb-npcm845-enable-ttyS1-for-SOL.patch \
  "
