# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 15:26:56 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 689502
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41357' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY69CsJAEIS/Uwxi4SNYi6AgWKa2jSLYBo0/iUju0ETBRh/VN4mTYIS4y+3PzOzeGsB/FkVBZe2HgkfAXP4z8/4WvqFpZd9qIstXI0OnHq4lnl6fMSmWkCM5iZCRkA1nueUuPBd/VXRyy4WMPTvhASupu1IfxNxUD3TrgrW4SBtS5YStZiaaibQPelI77bCc1A3/dOUNTtqQWdVN9W+sKquu/QDKhCSE' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_ibo/can_ibo_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_ibo/can_ibo_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_can_ibo.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_ibo.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva

# Elaborate design and properties
elaborate -top can_ibo

# Set up Clocks and Resets
clock -infer
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
