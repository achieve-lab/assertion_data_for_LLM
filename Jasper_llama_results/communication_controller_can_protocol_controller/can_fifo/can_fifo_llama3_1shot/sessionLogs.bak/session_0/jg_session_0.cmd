# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:20:35 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 22869
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44015' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY67CsJAEEXvKgax8BusBQWxTW0bRbANIRofaDZoomCjn+qfrMfFCHGGed258zCSwodzTl7ad1ygSDP0J+b1TUKjpnzqVhNZPBtR6tTDNSXA+hopl1WsrSrtQYYgiY6o1Q28on/BF6jVWaU2WoNHWsLuws7oXMkH/DrXil7KhpyYsTFjasxUykapB79gi9XB3/pnxv5yohM2pZpwewde+o/fZ+MlSQ==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_fifo/can_fifo_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_fifo/can_fifo_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_can_fifo.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_fifo.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -bbox_m can_fifo

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
