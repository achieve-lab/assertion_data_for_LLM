# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:16:50 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 35957
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33295' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY67CsJAEEXPKgax8BOsRdBCsEttG0WwDSG+IuqGmCjY6Kf6J/FmMUKcYedx58zuGsB/lmWJs/ZDwSNgLv+ZeX8L39C0qm81leWrkaFTL9eIp9NnzAVLyJ6CRMpISsRJbrlLLzS/KqZyS0bOlo30gJXoruidJjfVA/11wVqzWGS1V7EZE+VY90FPdCrFclQ3/ONC92rEWWeqbqZ3DyJy99sP4a4k3g==' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/counter/counter_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/counter/counter_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_counter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/counter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top counter

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
