# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 20:04:33 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 935672
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38309' '-nowindow' '-style' 'windows' '-data' 'AAABTnicjY/NCoJQEIWPRRItepCgIGgpLdtaBG0lzFKJrpgWtKlH7U1u35UM3DXDzJw583PnepKCp7VWjfQfOF+hVuhPvPcXBJ664vJel9m8OlEatMNti4+NNdVFRpFOqpXBTGD2OqNGd/ia+hVfoEalKiU6wIfa0j2k+0jlBl5w61o7agldKbEExVhG3SHDrgrWsH0GionSiB1Fw+Zky7+m3b0FWcSr7vo5N6agqvnZB3AuLiI=' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_receivecontrol/eth_receivecontrol_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_receivecontrol/eth_receivecontrol_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_eth_receivecontrol.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_receivecontrol.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
