# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-23 22:29:09 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 29364
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42729' '-nowindow' '-style' 'windows' '-data' 'AAABMHicjY69CsJAEITnFINY+BCWghbWqW2jCLYiGv8IuRATBRt9VN/k/O4wQjpnuZ3bmdnjjKT46ZxTQPdBi5RoTv1g3t9LbNSGnzttZflqsdRrlptIxBlqolxWGx1V64wyRtkqo6zu6DX+lV5QVqUqpdqjJ1qR7pM+4Ny4z/jrQmu8lNQJtuxVuL7vmHK4hDNNg5KxNeCFIqgXptEfux4fUX0opg==' '-proj' '/data/vpulav2/Work/Jasper/eth_outputcontrol/eth_outputcontrol/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/eth_outputcontrol/eth_outputcontrol/.tmp/.initCmds.tcl' 'FPV_eth_outputcontrol.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_outputcontrol.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
exot
exit
