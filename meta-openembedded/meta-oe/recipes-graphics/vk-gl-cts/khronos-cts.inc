LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"

SRC_URI = "\
	git://github.com/KhronosGroup/VK-GL-CTS.git;protocol=https;name=vk-gl-cts;nobranch=1 \
	git://github.com/google/amber;protocol=https;destsuffix=git/external/amber/src;name=amber;branch=main \
	git://github.com/KhronosGroup/glslang.git;protocol=https;destsuffix=git/external/glslang/src;name=glslang \
	git://github.com/KhronosGroup/SPIRV-Headers.git;protocol=https;destsuffix=git/external/spirv-headers/src;name=spirv-headers \
	git://github.com/KhronosGroup/SPIRV-Tools.git;protocol=https;destsuffix=git/external/spirv-tools/src;name=spirv-tools \
	https://raw.githubusercontent.com/baldurk/renderdoc/v1.1/renderdoc/api/app/renderdoc_app.h;subdir=git/external/renderdoc/src;name=renderdoc \
"

S = "${WORKDIR}/git"

SRCREV_FORMAT = "vk-gl-cts_amber_glslang_spirv-headers_spirv-tools"

S = "${WORKDIR}/git"

inherit pkgconfig cmake features_check

REQUIRED_DISTRO_FEATURES += "opengl"

DEPENDS += "libpng zlib virtual/libgles2 virtual/egl"

SRC_URI += "file://0001-Workaround-for-GCC-11-uninit-variable-warnings-946.patch;patchdir=external/amber/src \
            file://0001-Include-limits-header-for-numeric_limits.patch;patchdir=external/vulkancts \
            file://0001-vulkancts.patch \
"

SRC_URI:append:libc-musl = "\
	file://fix-musl.patch \
"
DEPENDS:append:libc-musl = " libexecinfo"

SRC_URI:append:toolchain-clang = "\
	file://fix-clang-private-operator.patch \
"

EXTRA_OECMAKE:append = " -DDEQP_TARGET=surfaceless"

CTSDIR = "/usr/lib/${BPN}"

FILES:${PN} += "${CTSDIR}"
