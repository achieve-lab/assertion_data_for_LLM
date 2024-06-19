# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 14:10:01 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 185941
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34899' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY69CsJAEIS/KAax8BGsRdBKu9S2UQTbIPEfyYWYKNjoo/om5+QwwrnL/tzs7N4EQPS01uKs/VAKiZnLfxa8v00U4Fv9bvnI8uVV6DTLDSVU9BmTYUg4UHESMhKy4SI33IVXml+Vc7mhoGTHVnjMSuyu2HtNbuoH0rpgrVmqC5mrhWKinVT3oCd2Lsxw1mv4x6s15OImTJ2imf49qiud2g/J/CSE' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_crc/can_crc_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_crc/can_crc_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_can_crc.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_crc.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva

# Elaborate design and properties
elaborate -top can_crc

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
