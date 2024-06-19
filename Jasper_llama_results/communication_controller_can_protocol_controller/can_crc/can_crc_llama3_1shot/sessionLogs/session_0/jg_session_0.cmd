# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:36:14 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 24637
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37121' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7LCoJQEIa/UyTRokdoHUFBtHXd1iJoK2I3ozxiWtCmHrU3sb9DBjbD3P7552IA/1FVFU7adzmPgLn0J+b1TXxDUz51q4ksn40InXq4pniyPmNSLCF7ShIhIyERJ6nlJrxU/yKfSS05BVs2wgNWYnfF3qlzVT7QrwvW6sXakLqYyyaaibUPemJnwixHVcM/XuiuRpxlM1VT3T2IW7hv38igJG0=' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_crc/can_crc_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_crc/can_crc_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_can_crc.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_crc.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top can_crc

# Set up Clocks and Resets
clock clk
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
