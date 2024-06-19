# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 20:16:58 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 951217
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45203' '-nowindow' '-style' 'windows' '-data' 'AAABUnicjY+9CsJAEIQnikEsfBBBQRCrFFa2UQTbEDT+EXNBLwo2+qi+SfxyGCGdu9z+zM4se56k4FmWpZy1HwRfoeb4z7z3twg8Na3qW01k+WpkqVOLa4rP62uoTEaR9ip0BBmAxEpxozt4wfxKzHGji6wSbcFDrWB3Ye+Y3Kin3LrQmlkC60C28GOnP7PbasOGzKGG/SOHpCh7bMkdeqKb/amvbs7pIk3cD8bwDlTW/e4DTXMvRA==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_transmitcontrol/eth_transmitcontrol_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_transmitcontrol/eth_transmitcontrol_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_eth_transmitcontrol.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_transmitcontrol.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
