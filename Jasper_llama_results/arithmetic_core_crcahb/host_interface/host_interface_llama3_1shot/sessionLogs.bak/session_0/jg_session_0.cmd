# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 18:36:14 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 61038
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34265' '-nowindow' '-style' 'windows' '-data' 'AAABPnicfY/NCsJADISnikU8+CCiggieevZaRfBaSv2raLf0R8GLPqpvUr8uVujFhGSTmUnIOpK8Z1VVstZ9kFz5WuI/c97fwnPUtrrvtJH1q/VKvWa4kbjEUBMlMgp0VKkYZAQS6oIb3cFL+Jyc4kaZCu21A/e1Qd1HfYC5UY+5daUt3AlljjJgY2InMlShIqopfcR2acBsCmN0plv8nQrsRaGuxJxuhrLWF/YnH3vJKpM=' '-proj' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_crcahb/host_interface/host_interface_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_crcahb/host_interface/host_interface_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_host_interface.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/host_interface.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva
exit
