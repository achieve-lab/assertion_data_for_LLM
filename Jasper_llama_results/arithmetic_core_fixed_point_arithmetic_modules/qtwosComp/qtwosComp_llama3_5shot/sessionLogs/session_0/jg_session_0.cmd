# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 19:24:01 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 69730
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44745' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY69CsJAEIQnikEsfAhLURuxSyfYRhFsw+G/qBdNYsBGH9U3iZ+HEQLucvszM7u3nqTgURSFnNXvBF+hJvjPvNe3CDxV7dPXqsjsWclSoxwuJT6vrb7Osoq0VaY9SBfE6Ihb5eAZfEKMcaurUq21Ag81R91EvYG5UXe4daoF3AVVjjrRmHiCH4As2Sm1mIjZY3Wg6/3RRu53Q200pBvB7eBSd/UbIrImgQ==' '-proj' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_fixed_point_arithmetic_modules/qtwosComp/qtwosComp_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_fixed_point_arithmetic_modules/qtwosComp/qtwosComp_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_qtwosComp.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/qtwosComp.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
