# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:21:01 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 51313
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41523' '-nowindow' '-style' 'windows' '-data' 'AAABQnichY/NDsFQEIW/Eo1YeBAJITYWXduWSMSuKeovuE1/EBse1ZvUcaOSrszJzJ05c2Yy1wG8R1EUWKvfFVx8xsLPnNc38Ryq9qlrVWb6rLzQKIdLiStv0+WMIWBLzl5MR0zIUTBcxefqp4qxYEjIiFiL95lJ3ZR6o85FeU+3TpjbXZHigL7FUvtSMQtxCTfpMlbaDy1Nx+IMB1WjP3OBvSrkJB9aXcpOs5n9zRuIBylL' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_rx/ge_1000baseX_rx_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_rx/ge_1000baseX_rx_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_ge_1000baseX_rx.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ge_1000baseX_rx.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva
exit
