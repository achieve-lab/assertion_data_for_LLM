# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 17:13:06 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 112337
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42875' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7LCsIwEEVPFIu48BNci6ALwV3XbusD3JZS36gp2iq40U/1T+o1WCHOMJOZOyfJGCB8lGWJs/pdKSBiLP+ZeX2L0ODbp6/5yvTpndCoLldIoGjT54QlZkPBTkpPSsJBbrlJLzS/KGdyy5mcFUvpEXPRTdFrTa6qO9p1wsLdSRw5E5syUJXqPWiJzjSx7NV1/7jY/ZpwVAzVjfTvVmzutn0D0D4kig==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/uartRec/uartRec_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/uartRec/uartRec_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_uartRec.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/uartRec.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top uartRec

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
