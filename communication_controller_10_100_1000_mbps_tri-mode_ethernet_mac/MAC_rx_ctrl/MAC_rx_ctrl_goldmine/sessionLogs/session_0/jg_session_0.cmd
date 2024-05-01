# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-24 16:15:06 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 140320
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37921' '-nowindow' '-style' 'windows' '-data' 'AAABKnicdY5RCwFBFIW/IZs8+BmS4hfsi5Q3LSmv0i4idrZhkRd+qn+yzsiqfXBuc8+dc8+duQYIH0VR8EH9rhQQMVb8YF7fIjRU4e+1qjJ7Vhga5XBpCXTa9EmxLNmSs5PSk7LioLBcpefqn5QzhcVxZk0iPWIud1PujToX1R3tOmWh3oQhI7Hjphxrxum9gTgWQ0tTmTTLXrfuH7/fyYoTjtos1b8eb/UfJgY=' '-proj' '/data/vpulav2/Work/Jasper/MAC_rx_ctrl/MAC_rx_ctrl_goldmine/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/MAC_rx_ctrl/MAC_rx_ctrl_goldmine/.tmp/.initCmds.tcl' 'FPV_MAC_rx_ctrl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/MAC_rx_ctrl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva

# Elaborate design and properties
elaborate -top MAC_rx_ctrl

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
