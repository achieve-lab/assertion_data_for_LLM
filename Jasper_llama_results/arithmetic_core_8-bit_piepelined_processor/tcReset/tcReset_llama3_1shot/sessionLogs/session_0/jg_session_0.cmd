# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 16:59:31 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 107899
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42207' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7LCsJADEVPFYu48BNci6Agbrt2Wx/gthRfVapT7FTBjX6qf1KvgxVqQjLJzZmZeEDwKMsSZ827kk/IVP4z7/UtAo+6ffpGXZk/aye0qssV4iu6DDljiNhTcJAykBKTyg036YXmuXImN1ywbNlID1mKboveaXJV3dOuM1aaWdYsxOUKy8j1qYiO6ExvGI7q+n9c5H6NOSkm6sbSE7HWbfsG0Bwkjw==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/tcReset/tcReset_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/tcReset/tcReset_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_tcReset.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/tcReset.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top tcReset

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
