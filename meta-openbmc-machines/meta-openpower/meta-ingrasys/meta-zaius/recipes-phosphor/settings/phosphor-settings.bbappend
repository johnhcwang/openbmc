FILESEXTRAPATHS_append_zaius := ":${THISDIR}/${PN}"
SRC_URI_append_zaius = " file://powerpolicy-default-ALWAYS_POWER_ON.override.yml"
SRC_URI_append_zaius += " file://TimeOwner-default-SPLIT.override.yml"
