# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-29 21:31:51 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 186865
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41263' '-nowindow' '-style' 'windows' '-data' 'AAABGHicdY5NCsIwEIW/KBZx4dIjuBD0BN1IwZ1UEdwW8Y9KsUFbFTd6VG8Sn8UKWThD5k2+eUNigPDhnKOK5l0lIGai/IV5fZvQ4Mfn3vDJ/OkptOrl2hLotBmyw3JR39dbM5YkTBkTSQtuqpH0RMZIupZCR1tWLOegW++PH7ryHeVK2FOSigxEVpplolfxUvOzqlXm2irYshGPWVR/fAPEiCIK' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/MAC_tx_Ctrl/MAC_tx_Ctrl/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/MAC_tx_Ctrl/MAC_tx_Ctrl/.tmp/.initCmds.tcl' 'FPV_MAC_tx_Ctrl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/MAC_tx_Ctrl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top MAC_tx_ctrl
exi
