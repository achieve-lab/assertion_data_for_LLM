# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 13:06:24 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 38935
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41635' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY/NCoJQEIWPRRIteo4ICnLtuq1F0FbELLOfK6UFbepRexP7vGTgohnu/Jw5c5jrSPKfVVXJWvdBcBVojv/MeX8L31Hb6r7TRpavVpZ6zXJDcXlDTXSWUaidSu1BxiCRjrjRHbxkfiXmuNFFhRJtwAOtYPdhb5ncqEfcutCaWQIrJcdWJdYB9QSdKXiNSQP2ctSMMjrv70ZoL4l04nl0M25JYRT2Bx8KYCi6' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/eth_clockgen/eth_clockgen_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/eth_clockgen/eth_clockgen_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_eth_clockgen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_clockgen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top eth_clockgen

# Set up Clocks and Resets
clock Clk
reset Reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
