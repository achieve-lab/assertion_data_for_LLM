# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 19:51:52 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 926738
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34465' '-nowindow' '-style' 'windows' '-data' 'AAABJHicVY5BCsJADEVfFYu48AgeQNCNdNe12yqC2yK1Wos4g7YKbvSo3mT8LVaYhEkmP28mCYD45Zyjtf5TISRhKf9b8Pld4gDfmrrnK+u3l2HQPe6QUGfMjAuGlCM1JylTKTvOcsNDeq3+TdHKDVcqcvbSEzaih6IP6tx1n2jXFVv1clGFciY+Y64q038wEm2lGcp2ks81O1gpKQu9iZQjTS5EV+2+XxT/JJc=' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_crc/eth_crc_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_crc/eth_crc_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_eth_crc.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_crc.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -top eth_crc

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