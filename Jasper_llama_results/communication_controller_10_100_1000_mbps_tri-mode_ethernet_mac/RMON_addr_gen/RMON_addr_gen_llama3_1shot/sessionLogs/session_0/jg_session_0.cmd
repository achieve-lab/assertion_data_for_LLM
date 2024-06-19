# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 13:04:19 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 37139
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44267' '-nowindow' '-style' 'windows' '-data' 'AAABOnicfY/NCsJADIS/Khbx4IMICqLHnnvT+gNeS7H1D3WLtgpe9FF9kzpdrNCLCckmM5mQdQDvWRQF1poPJZcAX/4z5/0tPIe6lX2jjsxftRdalbgacRVd+pwxhGzJ2QvpCYk4yg134bn4q3IqN1zISIiFByw13db0RszNKn1mrMQtmIifqoo0G0tV7k+0aSD9WruhI2UqxnBQN/6jCe01ESfFSN1Q9+yky+wvPmyEKJE=' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/RMON_addr_gen/RMON_addr_gen_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/RMON_addr_gen/RMON_addr_gen_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_RMON_addr_gen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/RMON_addr_gen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top RMON_addr_gen

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
