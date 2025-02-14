OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " phosphor-host-postd"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " phosphor-sel-logger"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " google-ipmi-sys"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " google-ipmi-i2c"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " gbs-hotswap-power-cycle"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " loadsvf"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " gbs-cpld-ver-check"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " memtester"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " net-tools"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " gbs-boot-status-led"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " phosphor-nvme"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " gbs-detect-gpio-present"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " phosphor-ecc"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " gbs-sysinit"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " gbs-ipmi-entity-association-map"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " usb-network"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " phosphor-image-signing"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " openssl-bin"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " phosphor-ipmi-blobs-binarystore"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " phosphor-virtual-sensor"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " acpi-power-state-daemon"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " virtual/obmc-gpio-presence"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " ipmitool"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " phosphor-health-monitor"

# Add back packages that were part of packagegroup-obmc-apps-extras
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " phosphor-hwmon"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " phosphor-inventory-manager"
# Required for obmc-bmcweb
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " bmcweb"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " phosphor-bmcweb-cert-config"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " phosphor-nslcd-authority-cert-config"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " phosphor-user-manager"
# Required for LEDs. Part of obmc-leds
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " ${VIRTUAL-RUNTIME_obmc-leds-manager}"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " ${VIRTUAL-RUNTIME_obmc-leds-sysfs}"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " ${VIRTUAL-RUNTIME_obmc-led-monitor}"
# Required for the front port. Part of obmc-console
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " obmc-console"
# Required from packagegroup-gbs-apps
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " virtual/bios-update"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " x86-power-control"
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " phosphor-pid-control"
# Required for phosphor-ipmi-kcs
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " virtual-obmc-host-ipmi-hw"
# Required for some services, such as phosphor-virtual-sensors
OBMC_IMAGE_EXTRA_INSTALL:append:gbs = " obmc-targets"
