# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:16:55 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 36134
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34363' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7LCsIwEEVPFIu48BNci6Agbrt2W0VwW0p9VdSU2iq40U/1T+ptsEKdIfO4cyaJAfxnWZY4az8UPALm8p+Z97fwDU2r+lZTWb4aGTr1co14On3GXLCE7ClIpIykRJzklrv0QvOrYiq3ZORs2UgPWInuit5pclM90F8XrDWLRVZ7FZsxUY51H/REp1IsR3XDPy50r0acdWbqpnr3ICJ3v/0A4Ygk2w==' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/counter/counter_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/counter/counter_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_counter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/counter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top counter

# Set up Clocks and Resets
clock clk
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
