# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-13 13:03:49 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 111273
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38917' '-nowindow' '-style' 'windows' '-data' 'AAABCHicVY5NCsIwEIW/WCzSRY/gAQQ9Qdduqwhui9QfFDGltgpu9Ki9SXwpVsgbMpO8+SaJAbK3c45e0UspJmep+Mt0v01mCOXPo9BZf4IK42F4QGKtlDk3LAUnWs5yZnJ2XBWWp/xW/btypbDUNBzYy8/ZiJ6IPqrz0H6qv67YqleK9HOerVmolroPEtGVHMulfzvkvL5Ivx/a' '-proj' '/data/vpulav2/Work/Jasper/counter/counter/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/counter/counter/.tmp/.initCmds.tcl' 'FPV_counter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/counter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

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
