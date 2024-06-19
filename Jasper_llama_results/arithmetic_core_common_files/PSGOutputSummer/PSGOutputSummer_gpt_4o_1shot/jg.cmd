# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:04:00 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 815968
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38019' '-nowindow' '-style' 'windows' '-data' 'AAABQnichY+9CsJAEIQnikEsfBDBgGBhkVrLRAK2QTT+od6hiYKNPqpvEr8cRkjlLje3OzN77HmSwmdZlnLRfgC+Ik3JX3jvbxF6akbVt5rM/NW4pU49XFt8Tl9DnWWUaqtCe5gBzFJH0ugOX6BfQUsaXZQr0xo+UoK7i3uDcqMO2DXWAi1Gm+EocFuHCXgiM14I6Fe8L/WYtjBGB7rJn7lqRwuXauw2HrHXjip3v/kAAL4q9g==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_common_files/PSGOutputSummer/PSGOutputSummer_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_common_files/PSGOutputSummer/PSGOutputSummer_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_PSGOutputSummer.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGOutputSummer.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva

# Elaborate design and properties
elaborate -top PSGOutputSummer

# Set up Clocks and Resets
clock clk_i
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
