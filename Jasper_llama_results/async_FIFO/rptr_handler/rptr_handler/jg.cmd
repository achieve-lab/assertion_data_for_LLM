# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-22 13:13:43 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 14277
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46769' '-nowindow' '-style' 'windows' '-data' 'AAABHHicdY5NCsIwEIW/KBZx4dojiKAn6LrbKoLbIv5LaUpsFdzoUb1JfBUrZOEbMpn5Zl6IAeKH956PuneliJRE8ZN5fYvYEKrpOyFZPIMbeq25XYl0hkwpsGQcqDmJTETW5ArLTbzW/KJcKiyOih1b8ZSltvva3mtyVT3WX+esNHMilXLGUW8V2s/lcsxEN6phIF8pYjmrG/11NHoDF6Aj+A==' '-proj' '/data/vpulav2/Work/Jasper/rptr_handler/rptr_handler/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/rptr_handler/rptr_handler/.tmp/.initCmds.tcl' 'FPV_rptr_handler.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rptr_handler.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

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
