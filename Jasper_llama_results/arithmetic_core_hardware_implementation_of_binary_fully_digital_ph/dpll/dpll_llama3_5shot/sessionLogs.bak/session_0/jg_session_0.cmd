# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:32:05 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 73263
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40525' '-nowindow' '-style' 'windows' '-data' 'AAABFnicVY47C8JAEIS/UwxiYW1tKWgjdqltowi2IRifqBc0UbDRn+o/OSeHCWSXfc3M3q0BwrdzDm/tl1JAxFxem/n+m9DQtHJuNZHlp1GhUy1XkkDRZ8wVS8yegqOQkZCEs9zyFF6IvytncsuNnC2p8IiV1F2pd2Ie6ge6dcFaXCqkfGEi9UYVetJl2racNA1rRexzwkUx1TTTXwepcn/hDw6/Iis=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/dpll/dpll_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/dpll/dpll_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_dpll.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/dpll.v \
  ${RTL_PATH}/phasecomparator.v \
  ${RTL_PATH}/freqdivider.v \
  ${RTL_PATH}/variableresetrandomwalkfilter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
