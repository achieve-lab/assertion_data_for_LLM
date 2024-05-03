# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-01 15:09:48 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 101413
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46433' '-nowindow' '-style' 'windows' '-data' 'AAABSnicjY67CsJAEEVvFINY+CGClmKR2jaKYCvBxBdxN2iiYKOf6p/Es4sR0jnDzuM+hg0kRc+6ruWj+6CEijUnfxG8v0MUqB1u77SR5avVpV5jbiQhb6ixjKw22qvSEWQEkignre7gFfyVWpBWF5XKlILHWqHuo97B3Jin/HWhNVyG6kAv0Sfef+Z2qS0XjEct9yceyXEOuFJ49MQ2+9Pv/ux66lmDy8UH02Ut8A==' '-proj' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_transmitcontrol/eth_transmitcontrol_goldmine/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_transmitcontrol/eth_transmitcontrol_goldmine/.tmp/.initCmds.tcl' 'FPV_eth_transmitcontrol.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_transmitcontrol.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva

# Elaborate design and properties
elaborate -top eth_transmitcontrol

# Set up Clocks and Resets
clock MTxClk
reset TxReset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
