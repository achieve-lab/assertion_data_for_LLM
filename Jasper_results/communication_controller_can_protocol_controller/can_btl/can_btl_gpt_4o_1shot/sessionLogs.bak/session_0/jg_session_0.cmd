# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 13:18:21 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 177772
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39735' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY69CsJAEIS/KAax8BGsRVAQLFPbRhFsg8afKCF3aKJgo4/qm8TJYYS4y+3Ozc7tjQcEz7IscdF+qPiEzJW/8N5fEHg0o7q3mszy1ejQqR/XEl+nz5gMQ8SRgpOYkZgNqdJwF19oflW1SsOFnD078SErqbtSHzS5CQ/kdcFas1gbMvWt1CkT1VgdelJb7TCcdRv+6SoPVihi5hxN9W8ilDu3H83UJJQ=' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_btl/can_btl_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_btl/can_btl_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_can_btl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_btl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
