# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-28 22:23:35 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 137249
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41025' '-nowindow' '-style' 'windows' '-data' 'AAABCnicVY7BCsIwEERfFIt48Ch+g6Bf0LPXVgSvUq2Kok2pVsGLfqp/EifSCpklm92Z2U0MEL+cc/zQfSpFJMwVf5hPU8SGEL7vhMziHdzQa4dbS6QzZEqBZc2BmqOYiZiMs8LyEF9LvyqXCkvFjR25+ISl3H2591Luqkf6a8pKWiZmw0zerfbAQK5Ss5aTunGj+zet9JyLXi601+MLb08f8A==' '-proj' '/data/vpulav2/Work/Jasper/apb/apb_goldmine/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/apb/apb_goldmine/.tmp/.initCmds.tcl' 'FPV_apb.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/apb.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva

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
