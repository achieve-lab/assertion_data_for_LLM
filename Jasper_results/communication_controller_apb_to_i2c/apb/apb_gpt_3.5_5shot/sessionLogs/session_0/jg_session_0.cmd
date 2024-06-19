# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 16:17:15 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 273661
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40245' '-nowindow' '-style' 'windows' '-data' 'AAABFHicVY69CsJAEIS/KAaxsPQBLAVtJF1q2yiCbYj/iniHJgo2+qi+yTkJiXC73P7MzN5uAMRv5xyVtV8KIQkz+d+Cb13EAb6VfctHFh8vQ6cZbiShXp8xVwwpBwpOQkZCMi5yw1N4If6uaOWGGzk7tsITllJ3pd6Leage6NY5K3GZkDUTaTf6B3pSWc0azuqGNV/utNKkTKWNlCNtOkqVV/f9ALVSIT0=' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_apb_to_i2c/apb/apb_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_apb_to_i2c/apb/apb_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_apb.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/apb.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

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
