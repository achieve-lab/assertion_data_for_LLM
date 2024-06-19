# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 20:00:42 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 933347
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40485' '-nowindow' '-style' 'windows' '-data' 'AAABLnicbY6xCsJAEERfFINY+BVWgqm0S20bRbANotEomjtiomCjn+qfxEkwwoG73O7ezOwyHhA+q6qiie5DxSdirvyF9/4OoYcb9b/jIsuX06HXLrcSX2/IhAxDzIGSo5CxkA1npeEuvBR/VbVKQ05Bwk54xErqvtR7MTfNI3ldsBaXSJWq57qUSW24EAjb6ioMtGPFGU76BX/VtR8rPGbauJvJQ6qpaJx/AL1qJ0A=' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_random/eth_random_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_random/eth_random_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_eth_random.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_random.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exot
exi
