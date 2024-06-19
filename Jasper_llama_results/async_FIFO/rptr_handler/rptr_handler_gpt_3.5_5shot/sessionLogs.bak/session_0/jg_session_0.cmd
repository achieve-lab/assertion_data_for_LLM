# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 12:27:48 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 143499
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41969' '-nowindow' '-style' 'windows' '-data' 'AAABOHicdY+7CsJAEEXvKgax8DtE0EbTpbaNItgG8RUlZENMFGz0U/2TeDYYIYUz7MzsfSyzRlLwrKpKdXQfFE+hFuQvzPs7BEbtcPdOG1m9Wl3qNeZG4nGGmiiVVaSTSp1BxiBbJaTVHbyEv1Iz0ipXoYP24KHWqPuojzA35hG7LrWBy0EKaqSYt1L0Ca5cU9AdszTAl4FYXbjN/zrcXo6JNMPt0322ifEV9R8+amQpBQ==' '-proj' '/data/vpulav2/Work/Jasper/async_FIFO/rptr_handler/rptr_handler_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/async_FIFO/rptr_handler/rptr_handler_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_rptr_handler.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rptr_handler.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -top rptr_handler

# Set up Clocks and Resets
clock rclk
reset rrst_n

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
