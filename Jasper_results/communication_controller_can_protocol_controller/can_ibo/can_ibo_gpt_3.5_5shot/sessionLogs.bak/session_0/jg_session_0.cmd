# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 15:06:49 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 210274
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41017' '-nowindow' '-style' 'windows' '-data' 'AAABJHicVY5LCsJAEERfFIO48AgeQNCNZJe12yiC26DxF5HMoImCGz2qN4mVwQjTzXT3VFV/AiB+1XWNs+5TISRhLv9b8PkVcYBvzb/jI8u3l6HXNreSUG/IhAJDypGKXMhYyIaL3PAQXom/KVq54UrJnp3whJXUfakPYu6qR7p1wVpcpgmFcs5WPVP1ZJoHA6mtZhjObpOva26w0qbM1BMpR9p8ElO6e78OJyR9' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_ibo/can_ibo_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_ibo/can_ibo_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_can_ibo.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_ibo.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva
exit
