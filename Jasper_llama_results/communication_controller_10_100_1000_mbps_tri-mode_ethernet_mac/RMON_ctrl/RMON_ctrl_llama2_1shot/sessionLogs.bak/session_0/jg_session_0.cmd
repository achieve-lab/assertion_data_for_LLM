# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:54:24 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 35065
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34485' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY5LD8FQEIVPiUYs/AhLQcK6azvqkdg2TalHcJtqSWz4qf5JfW5U0sRM5nXOmTvXkeQ9iqKQtfqd5MrXGP+Z8/o2nqOqfeZaFZk/K1VqlMulxCXa6usso0Bb5dqDdEFCHXGjG3gOfyEnuFGqTButwX0tUTdRxzBX+g5/nWkFt9AEfkoXoU95a0CNqFKLjQTM6MDU+6MN7PVQJ2LENOT+Dn1mf/0G36Elgg==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/RMON_ctrl/RMON_ctrl_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/RMON_ctrl/RMON_ctrl_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_RMON_ctrl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/RMON_ctrl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top RMON_CTRL

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
