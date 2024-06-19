# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 15:37:34 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 701575
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36767' '-nowindow' '-style' 'windows' '-data' 'AAABEnicVY47C8JAEIS/UwxiYWltLSgIlqltowi2IT6jiBc0UbDRn+o/OSdHImSX28fM7O0aIHw75/DWfikERMzlfzPfqggNTSv7VhNZfhoZOvVwLQn0+oy5Yok5UnASMhKScJFbnsIL8XfFTG65kbNnJzxiJXVX6oOYh+qBbl2wFpcI2TCRdqt/oCdVplnLWd2w4sudmTQxM3/BVHtSVbm/7gd4TiFE' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_apb_to_i2c/apb/apb_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_apb_to_i2c/apb/apb_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_apb.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/apb.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva

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
