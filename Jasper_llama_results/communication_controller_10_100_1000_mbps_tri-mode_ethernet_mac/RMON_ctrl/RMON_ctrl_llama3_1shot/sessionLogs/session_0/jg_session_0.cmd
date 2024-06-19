# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:57:18 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 36114
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33319' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY7JCsJAEEQrikE8+BEeRQXxmrM3jQt4DSEaF9QJMVHwop/qn8TnYISA3fRWVT09jiTvURSFrNXvJFe+xvjPnNe38RxV7TPXqsj8WalSo1wuJS7RVl9nGQXaKtcepAsS6ogb3cBz+As5wY1SZdpoDe5ribqJOoa50nf460wruIUm8FO6CH3KWwNqRJVabCRgRgem3h9tYK+HOhEjpiH3d+gz++s337Mlgw==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/RMON_ctrl/RMON_ctrl_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/RMON_ctrl/RMON_ctrl_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_RMON_ctrl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/RMON_ctrl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

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
