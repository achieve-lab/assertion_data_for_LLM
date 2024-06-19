# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:21:34 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 51431
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34121' '-nowindow' '-style' 'windows' '-data' 'AAABQnichY/NCsJADIS/Khbx4IMIiiKCh569VhHEW6la/1BX+qPiRR/VN6njYoWezJBsMpmErAN4jzzPsVa9K7j4jISfOa9v4jmU7VNXyszkWXqhVgwXElfepM0JQ8CGjJ2YlpiQg2C4is/UTxTPgiEmJWIl3mcqdV3qtToX5R3dOmZmd0WKPboWC+1LxMzFxdykS1lqPzQ0fRZn2Ksa/pkL7FUhR3lf1UDdrWZT+5s3iD8pTw==' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_rx/ge_1000baseX_rx_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_rx/ge_1000baseX_rx_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_ge_1000baseX_rx.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ge_1000baseX_rx.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
