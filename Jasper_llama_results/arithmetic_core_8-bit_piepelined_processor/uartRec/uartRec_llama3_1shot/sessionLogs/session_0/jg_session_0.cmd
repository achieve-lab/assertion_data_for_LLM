# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 17:13:46 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 113217
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46471' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7LCsJADEXPKBZx4Se4FkFB3Hbttj7AbSn1jTpFWwU3+qn+Sb0OVhgTkkluzszEAOGjLEuc1e9KARFj+c/M61uEBt8+fc1Xpk/vhEZ1uUICRZs+JywxGwp2UnpSEg5yy016oflFOZNbzuSsWEqPmItuil5rclXd0a4TFu5O4siZ2JSBqlTvQUt0pollr677x8Xu14SjYqRuqH+3YnO37RvQGCSH' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/uartRec/uartRec_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/uartRec/uartRec_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_uartRec.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/uartRec.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

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
