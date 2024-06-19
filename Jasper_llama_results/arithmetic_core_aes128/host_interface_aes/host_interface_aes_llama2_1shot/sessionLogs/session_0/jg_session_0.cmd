# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 17:23:09 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 117143
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36499' '-nowindow' '-style' 'windows' '-data' 'AAABRnicfY+7CsJAEEVvFINY+CGigtbB0jaKYBtCjC80G/JQsNFP9U/iyWKENM6wuzP3Mcw6krxnVVWy0X1wufK1JH/hvL+F56gddd9pI+tX65V6jbmRuJyhJkpkFOigUieQEUioC2l0By/hc+6UNMpUKNYO3NcGdR/1HuZGPWbXlbZwR5Q5yoCJiXVkqEJFVFP6iOnSAG8KY3SmW/x1BbwxbGA3C3XlzOlmYLWvsD/6AOLOLDI=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_aes128/host_interface_aes/host_interface_aes_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_aes128/host_interface_aes/host_interface_aes_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_host_interface.tcl'


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
