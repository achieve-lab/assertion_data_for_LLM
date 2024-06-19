# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:07:25 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 19054
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33607' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7NDsFQEIW/Eo1YeARrkZCIbde2JRLb5qaUCr0NLYkNj+pN6mhUcs1k/s6c+fGA4FFVFbW073I+IXPpT7zXNwk8XPnULRdZPp0InWa4ofiyPmMyLBE7SlIhIyGGo9RyE16qf5HPpZYzBVs2wkNWYnfFTtS5Kh/o1wVr9WJtyBSNsoSJZmLtg57YuXZYDqqGf7yovmo4yWaqprq7F7eov30DwqQkUQ==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_acf/can_acf_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_acf/can_acf_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_can_acf.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_acf.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva
exit
