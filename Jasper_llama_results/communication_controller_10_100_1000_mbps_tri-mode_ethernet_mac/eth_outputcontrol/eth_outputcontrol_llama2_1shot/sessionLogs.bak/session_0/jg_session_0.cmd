# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:00:10 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 43489
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34993' '-nowindow' '-style' 'windows' '-data' 'AAABSnichY/NCoJQEIWPRRItepCgINeu21oEbUXKslCvmBa0qUftTezzkoGrZpi/c+Zc5jqS/GfTNLI2fJBcBVrhP3Pe38Z31Ld2HvSRzatXpVEn7lZcYqq5chmFOqnWGWQGEinFje7gNfyVXOBGpSrFOoAH2rI9ZvsIc6P3uHWtHVzMVkI16CrYNu+ZcmpJTbWwSIpqwguFRS/2uP/a0F4XKSM8piX3JTCV/dUH0QMtpg==' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/eth_outputcontrol/eth_outputcontrol_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/eth_outputcontrol/eth_outputcontrol_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_eth_outputcontrol.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_outputcontrol.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top eth_outputcontrol

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
