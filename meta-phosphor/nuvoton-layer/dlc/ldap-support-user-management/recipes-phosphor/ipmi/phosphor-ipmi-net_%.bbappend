RMCPP_IFACE = "eth1"

FILESEXTRAPATHS:append := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-support-ipmi-session-login-via-ldap.patch"
