# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-28 16:58:54 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 134395
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45907' '-nowindow' '-style' 'windows' '-data' 'AAABQHicjY7BCsIwEERfFIt48EME/QDp2WsrglcpVYsiTUmtohf9VP+kTqMVenOW7G5mZjcxQPio6xqP/l0pIGKh+MG8vk1o6KK597rM8tmpMGiHW0ugM2ZKjmVDRsVBzERMwklhuYqvpJfKhcLiOLNjKz5iJfdQ7r2Ui/q5/hqzlpZqQ67q5M20tfRTTkyi/ua1T51JSfUWjLSpkMdy9L/4f0eDN/tTK6Q=' '-proj' '/home/vpulav2/Work/Jasper/can_register_asyn_syn/can_register_asyn_syn/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/can_register_asyn_syn/can_register_asyn_syn/.tmp/.initCmds.tcl' 'FPV_can_register_asyn_syn.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_register_asyn_syn.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top can_register_asyn_syn

# Set up Clocks and Resets
clock clk
reset rst

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
