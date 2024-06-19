# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 21:24:23 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 155070
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44539' '-nowindow' '-style' 'windows' '-data' 'AAABUnicjY+9CsJAEIQnikEsfBBBQQurFFa2UQTbcGg0SkyCXhRs9FF9k/h5GCGdu9z+zMwue56k4FFVlZy17wRfoeb4z7zXtwg8Ne3Tt5rI8tnIUqceriU+r6+hMuWKtFepA8gAxCjFc93AS/gLscBznWUVawseaoW6i3oHc6WecutCa7gYVUK26I2bP7HbasOGzKE5+0cOSZnssaVw6JFu9ud85K40cEYTujG6BMa6370BTD0vMA==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_transmitcontrol/eth_transmitcontrol_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_transmitcontrol/eth_transmitcontrol_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_eth_transmitcontrol.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_transmitcontrol.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva
exit
