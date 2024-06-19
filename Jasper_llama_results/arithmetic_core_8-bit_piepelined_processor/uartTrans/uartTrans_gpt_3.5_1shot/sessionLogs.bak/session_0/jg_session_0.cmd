# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:54:49 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 648525
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37255' '-nowindow' '-style' 'windows' '-data' 'AAABLHicbY7LCsIwEEVPFYu48CNcChZE3HXttoritgTfIiZoq+BGP9U/qbfBCgVnyCRz5t4wARA/i6LAR/OhEpIwUf4ieH8fcUA9yr5RJ7NX7YZWZa4koU6XAWcsKTtyDiJ9EcNJabmL55pfVZ3SciFjw1o8YS51W+qtJje9e9p1ytJ7jFcuVI33R+pW+hM6cjhxy1Fd9Edb7uJEUkaaj3UPRfdyZH7vD2VaJnM=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/uartTrans/uartTrans_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/uartTrans/uartTrans_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_uartTrans.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/uartTrans.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
