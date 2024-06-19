# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 19:22:11 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 67958
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37205' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7NDsFQEIW/SzRi4RGsRcJG7Lq2LZHYNk1RFVyplsSGR/Umddqo5JrJ/J0582MA/1mWJbW0H3IeAXPpT8z7m/gGV6q65SLLlxOh0ww3FE/WZ8wZS0hCQSpkJCTiKLXchRfqX+UvUktGzpaN8ICV2F2xd+rclA/064K1erE2hEIzzSZMNBNrH/TErlDLQdXwjxfWVyNOsqmqme7uxc3rbz/QBCST' '-proj' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_cellular_automata_prng/ca_prng/ca_prng_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_cellular_automata_prng/ca_prng/ca_prng_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_ca_prng.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ca_prng.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
