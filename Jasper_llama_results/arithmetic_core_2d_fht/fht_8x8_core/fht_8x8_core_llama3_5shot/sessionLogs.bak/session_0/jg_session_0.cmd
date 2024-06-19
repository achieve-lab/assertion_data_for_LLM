# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 10:37:13 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 37316
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33145' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY/PDsFAEMZ/JRpx8Bwi4UAkDj27lkhcN021SrANLeLCo3qT+jQq6cFMZnbn+7OZdQDvURQFZTTvai4+M+UvnNf34jnU4zM36sjiWTuhVZkriavqMuCIxbAhZyukLyRgr7Rchefiz+qp0nIiI2It3GcpdVvqWMxF9552nbMSF5NIZ5hyUxnC0hkxFBrqZejIlwqz7DSN/jpMuUnAQTXWNNEuibis/MEb3LEoFQ==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/fht_8x8_core/fht_8x8_core_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/fht_8x8_core/fht_8x8_core_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_fht_8x8_core.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_8x8_core.v \
  ${RTL_PATH}/mtx_trps_8x8_dpsram.v \
  ${RTL_PATH}/fht_1d_x8.v \
  ${RTL_PATH}/fht_bfly_noFF.v \
  ${RTL_PATH}/fht_bfly.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
