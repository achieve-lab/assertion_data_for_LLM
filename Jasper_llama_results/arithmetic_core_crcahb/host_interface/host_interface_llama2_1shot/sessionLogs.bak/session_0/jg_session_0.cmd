# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 18:36:05 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 60738
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37733' '-nowindow' '-style' 'windows' '-data' 'AAABPnicfY/NCsJADISnikU8+CCigh489ey1iuC1lPpX0W7pj4IXfVTfpH5drNCLCckmM5OQdSR5z6qqZK37ILnytcR/5ry/heeobXXfaSPrV+uVes1wI3GJoSZKZBToqFIxyAgk1AU3uoOX8Dk5xY0yFdprB+5rg7qP+gBzox5z60pbuBPKHGXAxsROZKhCRVRT+ojt0oDZFMboTLf4OxXYi0JdiTndDGWtL+xPPnu3KpI=' '-proj' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_crcahb/host_interface/host_interface_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_crcahb/host_interface/host_interface_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_host_interface.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/host_interface.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva
exit
