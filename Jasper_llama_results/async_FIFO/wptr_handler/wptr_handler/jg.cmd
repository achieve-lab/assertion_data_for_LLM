# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-22 13:04:49 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 12211
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45379' '-nowindow' '-style' 'windows' '-data' 'AAABHHicdY5NCsIwEIW/KBZx0bVHEEFP0LXbWgS3RfyX0pTaWnCjR/Um8VWskIVvyGTmmzchBogezjk+6t+VAmIWip/M61tEBl9t3/NJ8vRuGHTLnSXQCZmRY0k5UnMWmYpsyBSWRrzW/KpcKCwlFXt24jEruYdyHzS5qZ7or0vWmjUilbwpJ72Vy59pq2QuulUNI+0VIpaLuvHfjVZvGbIkAg==' '-proj' '/data/vpulav2/Work/Jasper/wptr_handler/wptr_handler/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/wptr_handler/wptr_handler/.tmp/.initCmds.tcl' 'FPV_wptr_handler.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/wptr_handler.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top wptr_handler

# Set up Clocks and Resets
clock wclk
reset wrst_n

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
