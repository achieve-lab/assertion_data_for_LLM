# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 15:07:03 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 211051
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35385' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY69CsJAEIS/Uwxi4SNYi6CVdqltowi2QeNPIpI7NFGw0Uf1TeIkGCHucvszM7u3BvCfRVFQWfuh4BEwl//MvL+Fb2ha2beayPLVyNCph2uJp9dnTIol5EhOImQkZMNZbrkLz8VfFZ3cciFjz054wErqrtQHMTfVA926YC0u0oZUOWGrmYlmIu2DntROOywndcM/XXmDkzZkWnUz/RuryqprP8q8JIg=' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_ibo/can_ibo_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_ibo/can_ibo_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_can_ibo.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_ibo.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
