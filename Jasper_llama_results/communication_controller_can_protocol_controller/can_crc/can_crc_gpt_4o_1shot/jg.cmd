# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:43:37 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 854260
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36985' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY69CsJAEIS/KAax8BGsRVAQLFPbRhFsg8R/JBdiomCjj+qbnJPDCOcu+3Ozs3sTANHTWouz9kMpJGYu/1nw/jZRgG/1u+Ujy5dXodMsN5RQ0WdMhiHhQMVJyEjIhovccBdeaX5VzuWGgpIdW+ExK7G7Yu81uakfSOuCtWapLmSuFoqJdlLdg57YuTDDWa/hH6/WkIubMHOKpvr3qK50aj/JxCSA' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_crc/can_crc_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_crc/can_crc_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_can_crc.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_crc.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva

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
