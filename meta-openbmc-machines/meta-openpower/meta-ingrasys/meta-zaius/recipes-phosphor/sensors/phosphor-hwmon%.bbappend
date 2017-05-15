FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

NAMES = "i2c@1e78a000/i2c-bus@40/lm75@4a i2c@1e78a000/i2c-bus@380/lm75@4a i2c@1e78a000/i2c-bus@380/lm75@4f"
NAMES += " i2c@1e78a000/i2c-bus@380/nct7904@2d i2c@1e78a000/i2c-bus@380/nct7904@2e"

ITEMSFMT = "ahb/apb/{0}.conf"

ITEMS = "${@compose_list(d, 'ITEMSFMT', 'NAMES')}"

ENVS = "obmc/hwmon/{0}"
SYSTEMD_ENVIRONMENT_FILE_${PN} += "${@compose_list(d, 'ENVS', 'ITEMS')}"
