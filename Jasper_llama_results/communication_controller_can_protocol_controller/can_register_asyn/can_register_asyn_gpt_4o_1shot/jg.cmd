# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:52:33 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 863258
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40699' '-nowindow' '-style' 'windows' '-data' 'AAABSnichY/LCsIwEEVvFYu48EMEBcVl126rCG5LqVot0pQ+FN3op/on9TRYoStnSDI5d2YycSR5z7quZa3/YHPla4X/zHl/A89R15p7r0s2r84pDdriNsVljTVVKqNAsSqdIRNIqAtudINX6AV7hhvlKnXQHu5rS/aQ7CPKlXjBrGvt0CI6pJw5uTFdC1uVQ0LiO9oMEvGGNKJDhmaU2OH+1zazZtBASzv5HH4iKu2vPqfxLTY=' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_register_asyn/can_register_asyn_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_register_asyn/can_register_asyn_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_can_register_asyn.tcl'


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
exit
