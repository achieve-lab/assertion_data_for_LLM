# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:29:36 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 31057
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36691' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY/NDsFQEIW/Eo1YeA6RkGDbncRSicS2afwUwW2qRWx4VG9Spzcq6cJM7vycOWcy1wG8Z57nWKs/FFx8JvKfOe9v4TlUrehrVWT+qmRolOKS4uq16XHGEBCRsRfSFRJylBtuwjPNL4qx3JCQsmEt3GchdlPsrSZX1R3dOmOpWcKdqTQnxtIUGwpVQl95pc3Qki4WYjioG/5VBPaSUHjISN1At+zESO0PPhQ6KOM=' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxNumCounter/rxNumCounter_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxNumCounter/rxNumCounter_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_rxNumCounter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxNumCounter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top rxNumCounter

# Set up Clocks and Resets
clock rxclk
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
