# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:02:58 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 27882
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44551' '-nowindow' '-style' 'windows' '-data' 'AAABSnichY/NDsFQEIVPiUYsPIiEBNuubUsktk1TlIbepj+EDY/qTepzo5KuzGT+zpmZO9eR5D3qupaV7h3nytcC/Ynz+iaeo7Z86k4bWT1bUeo1w02Liw01ViqjQLEqHUFGIKFOqNEVvIIv8BlqlKvUTltwX2u6+3TvYS7kM25dagMXsSEl5vTGbC3sVA4Skt/gJiARb0gDNmRwRok97v9sYK8LdcbmVFPwA/Ol/dUbps0tIw==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_register_asyn/can_register_asyn_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_register_asyn/can_register_asyn_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_can_register_asyn.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_register_asyn.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top can_register_asyn

# Set up Clocks and Resets
clock clk
reset rst

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
