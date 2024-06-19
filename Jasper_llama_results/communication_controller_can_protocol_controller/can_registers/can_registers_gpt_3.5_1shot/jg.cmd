# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 16:12:21 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 267337
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38395' '-nowindow' '-style' 'windows' '-data' 'AAABPHicfY+9CsJAEIQnikEsfBBBQUSr1GmjCLZBosaI5EJ+FGz0UX2T+OUwQhp3uZ3b2ZnlzpHkPeu6lo3+g+IqkE/+wnl/L56jbjR9r8tsXh2UBq25lbicsaZKZRQqVqUEZgKz15U0usNXzAtqRhrlKnXUAT7QFvUQ9YnJzTp9rbVjFrEhBXO0MVsL68rBGbeI3dIIZwZndKFb/fE0b8voQi3wL8E57Blnaf/xARQjKc0=' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_registers/can_registers_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_registers/can_registers_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_can_registers.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_registers.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5.sva
exit
