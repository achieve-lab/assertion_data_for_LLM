# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-28 17:05:10 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 136786
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34133' '-nowindow' '-style' 'windows' '-data' 'AAABHHicdY69CsJAEIS/UwxiYe0jiKBPkDptFMFWJGpQJBcuRsFGH9U3OSfBCFc4y+3P7MxyBoif3nta9B9KESmJ4gfz/jaxIUQz90Jm9QoqDDpzJ4n0xswpsGzJqTmJmYnZcVFY7uJr7SvlUmFxXDmwF5+ylnoo9VGbm/qp/rpko12mC4WqkzbX1ap1ORaqmS7DSL5SjOWsafLX0eADDsIj2g==' '-proj' '/home/vpulav2/Work/Jasper/can_register/can_register/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/can_register/can_register/.tmp/.initCmds.tcl' 'FPV_can_register.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_register.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top can_register

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
