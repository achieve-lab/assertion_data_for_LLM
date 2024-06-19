# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-28 18:53:50 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 157531
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41421' '-nowindow' '-style' 'windows' '-data' 'AAABDHicZY7PCgFxFIW/IZMs5BGsFU8wa9shZSthRJqZMJQNj+pNxjdCTc7td/+ce+7pFwDRvSxL3mjeTCExY+OH4PlpooA6qrlRZ6aPWoXW9/grCX1dhqRkLNhSsJMZyCw5GBlX+cL9yZwbGUfObFjLx8xUt1Unbi72ff86Ye5upUNqTXRMvBp5tdIROupzXTL2Tr0/ZYUXw6sgSA==' '-proj' '/home/vpulav2/Work/Jasper/can_fifo/can_fifo/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/can_fifo/can_fifo/.tmp/.initCmds.tcl' 'FPV_can_fifo.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_fifo.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top can_fifo
exit
