# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 15:35:36 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 240907
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46057' '-nowindow' '-style' 'windows' '-data' 'AAABSHichY/NCsJADISnikU8+CCCIkhvPXutIngtUrVapFv6o+hFH9U3qV8XK/RkwibZmUw260jyn3Vdy1r/QXAVaIn/zHl/C99R15p7r4usX50sDVpx2+JyxpoqlVGoWJXOIBOQnS640Q28gi+IGW6Uq9RBe/BAG7qHdB9hrtRzdl1pCxcxISXn9MZMLawqByl0h5lxj3hBGqHPYIwSu9o/ZbNnBhZqwRSP7MGc0Jf2Tx9CkSxp' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_register_syn/can_register_syn_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_register_syn/can_register_syn_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_can_register_syn.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_register_syn.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -top can_register_syn

# Set up Clocks and Resets
clock clk
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
