# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 15:08:12 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 211801
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35567' '-nowindow' '-style' 'windows' '-data' 'AAABJHicVY5LCsJAEERfFIO48AgeQFAQcZe12yiC26DxF5HMoImCGz2qN4mVwQjTzXT3VFV/AiB6VVWFs/ZTISRmLv9b8PkVUYBv9b/lI8u3l6HTNDeSUK/PiBxDwpGSTMhQyIaL3PAQXoq/KVq54UrBnp3wmJXUXakPYu6qB7p1wVpcqgm5csZWPWP1pJoHPamtZhjObpOvq2+w0iZM1TNTnmjzSUzh7v0CDe8keQ==' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_ibo/can_ibo_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_ibo/can_ibo_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_can_ibo.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_ibo.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5.sva
exit
