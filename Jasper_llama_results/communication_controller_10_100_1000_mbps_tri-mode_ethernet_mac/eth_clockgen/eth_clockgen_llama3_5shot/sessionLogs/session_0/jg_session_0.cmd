# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 13:06:37 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 39443
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33573' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY/NCoJQEIU/iyRa9BwR1KJo57qtRdBWxCzt70ppQZt61N7EjpcMXDTDnZ8zZw5zHcB7lmWJtfZDwcVnLv+Z8/4WnkPTqr7VRJavRoZOvVxTXL0+I84YAnYUpEKGQkKOcsNdeKH5VTGTGy7kxGyE+6zE7oq91eSmeqBbF6w1i8VKlCOrEnGQeiydsfAKg572MqkZ9uomfzcCe0nISW+qbqZbEjFy+4MPCqoovw==' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/eth_clockgen/eth_clockgen_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/eth_clockgen/eth_clockgen_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_eth_clockgen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_clockgen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
