FILESEXTRAPATHS:prepend:olympus-nuvoton := "${THISDIR}/${PN}:"
SRCREV = "9ef0d0fbacee8f789c0c773c86f2d9960106c8fd"

#SRC_URI:append:olympus-nuvoton = " file://0001-Customize-phosphor-watchdog-for-Intel-platforms.patch"

# Remove the override to keep service running after DC cycle
SYSTEMD_OVERRIDE:${PN}:remove:olympus-nuvoton = "poweron.conf:phosphor-watchdog@poweron.service.d/poweron.conf"
SYSTEMD_SERVICE:${PN}:olympus-nuvoton = "phosphor-watchdog.service"

