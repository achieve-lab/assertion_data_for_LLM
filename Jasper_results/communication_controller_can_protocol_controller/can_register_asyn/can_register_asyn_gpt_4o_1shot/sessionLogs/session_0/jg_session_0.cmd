# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 15:41:17 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 249196
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39531' '-nowindow' '-style' 'windows' '-data' 'AAABSnichY/LCsIwEEVvFYu48EMEBcVl126rCG5LqVot0pQ+FN3op/on9TRYoStnSDI5d2YycSR5z7quZa3/YHPla4X/zHl/A89R15p7r0s2r84pDdriNsVljTVVKqNAsSqdIRNIqAtudINX6AV7hhvlKnXQHu5rS/aQ7CPKlXjBrGvt0CI6pJw5uTFdC1uVQ0LiO9oMEvGGNKJDhmaU2OH+1zazZtBASzv5HH4iKu2vPqfxLTY=' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_register_asyn/can_register_asyn_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_register_asyn/can_register_asyn_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_can_register_asyn.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_register_asyn.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva

# Elaborate design and properties
elaborate -top can_register_asyn

# Set up Clocks and Resets
clock clk
reset rst

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
