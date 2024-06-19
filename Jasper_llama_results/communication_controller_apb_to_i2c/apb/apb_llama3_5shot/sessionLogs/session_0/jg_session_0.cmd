# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:08:59 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 25479
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42951' '-nowindow' '-style' 'windows' '-data' 'AAABEnicVY4/C8JADMV/VSzi4OjsLOgibp1dqwiupf6tol7RVsFFP6rf5HwerXAJySXvvVwSANHLWouz5lMpJGYq/1vwqYoowLdf3/CR+dt7oVUP15JQ0WXIBUPCnpKDkIGQlJPc8BBeir8p53LDlYItG+ExC6nbUu/E3FX3dOuMpbhUyIqRtGv9Ax2pcs0ajur6FZ+4LSlnxVjdRHsyaQp33Rd3YiE1' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_apb_to_i2c/apb/apb_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_apb_to_i2c/apb/apb_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_apb.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/apb.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva

# Elaborate design and properties
elaborate -top apb

# Set up Clocks and Resets
clock PCLK
reset PRESETn

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
