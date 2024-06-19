# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 17:18:58 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 115877
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35757' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY5PD8FAEMV/SzTi4EM4Ci7i1rNrCXFtNv6VYBtaEhc+qm9Sz0YlTcxkZue9eW93DRA+iqLAR/2uFhAxVv7CvL5DaKjGB9eqzPRZOaFRmktJoGrT54QjZkvOTkxXjOWgdNzE59pf1FOl40zGmpX4iJnUTak32lw1d/TXCQvvsV45V7fePxBa6k5oyZGKd+yFen+0sX/dclQNhUbiEukz/+s3HRYmbw==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/uartTrans/uartTrans_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/uartTrans/uartTrans_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_uartTrans.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/uartTrans.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
