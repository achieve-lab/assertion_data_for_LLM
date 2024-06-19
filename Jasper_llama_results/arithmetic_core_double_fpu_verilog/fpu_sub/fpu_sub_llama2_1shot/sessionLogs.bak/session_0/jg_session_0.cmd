# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 16:18:50 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 100752
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38153' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7LDsFQEIa/Eo1YeARrkZCw7tq2RGLb1J3gNPSQ2PCo3uT4T6OSmsnc/vnnEgDR0zlHIfWHXEjMWPqT4P1NooCq+LpWRaavSoRGOVxSQlmbPmcMCVsseyE9ISlHqeEu3Kp/lc+khgs5a1bCY2ZiN8XeqHNT3tGvE+bqecQq+rkFA80stQ9aYmfaYTio6v7xkuJqykk2UjUUvhM3L779ANx2JMI=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_double_fpu_verilog/fpu_sub/fpu_sub_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_double_fpu_verilog/fpu_sub/fpu_sub_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_fpu_sub.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fpu_sub.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva
exit
