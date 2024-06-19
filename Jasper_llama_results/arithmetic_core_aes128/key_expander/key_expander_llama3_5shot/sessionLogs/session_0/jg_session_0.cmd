# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:05:50 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 68642
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42625' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY+7CsJAEEVvFINY+B0iaKHYpbaNItiGYOJbN8TEV6Of6p/E42KEFM6w87h37jDrSPIeRVHIWv1OcOVrjP/MeX0Lz1HVPn2tikyflSw1SnE54vLa6ukoo0Ar5dqAdEFC7XGjC3gOfyImuFGqTLEicF8zpptML2HO1B1unWgOt2PmRo51hQvZEFGn6qNesFlqoUtAjLZ0g7+KwF4S6sAb0o24ZY0qsz94Axg4KPE=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_aes128/key_expander/key_expander_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_aes128/key_expander/key_expander_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_key_expander.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/key_expander.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva

# Elaborate design and properties
elaborate -top key_expander

# Set up Clocks and Resets
clock -infer
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
