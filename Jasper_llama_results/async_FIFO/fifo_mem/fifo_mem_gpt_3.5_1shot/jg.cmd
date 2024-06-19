# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 12:48:32 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 573140
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38437' '-nowindow' '-style' 'windows' '-data' 'AAABKHicZY7NDsFQEIW/Eo1YeAZrQSJi17VticS2EVwl6ja0JDY8qjep00YlN2Zy5+fMmXPHA4JnURRU1nwo+ITM5D/z3t8i8HCt7Bsusng5GVr1ck3x9boMOWOJ2JNzENIXsuYkt9yF55pfFVO55ULGjq3wkKXYbbGNJjfVPd06Z6WZkZKpVBOxE0ba2kgROuKnUrEc1Q3+mOUdqdgRE21Nlcf6PRYjq27+ALTpJWs=' '-proj' '/data/vpulav2/Work/Jasper_corrected/async_FIFO/fifo_mem/fifo_mem_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/async_FIFO/fifo_mem/fifo_mem_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_fifo_mem.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fifo_mem.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
