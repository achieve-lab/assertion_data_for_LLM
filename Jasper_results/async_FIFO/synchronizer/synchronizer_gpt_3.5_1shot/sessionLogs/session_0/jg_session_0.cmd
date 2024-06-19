# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 12:16:07 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 125262
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39073' '-nowindow' '-style' 'windows' '-data' 'AAABOHicdY/LCoJQEIY/iyRa9BwRFES2c93WImgrYReN6IiXIjf1qL2J/UoGLprhzMz5L4c5FuA+y7Kkjm6hYuOxVP7Cen8H16Id1b3TRtavVodeY24kts6QCVcMPidyIiFjITsuSsNdeC4+VY2VhoSMA3vhHhup+1Ifxdw0j7Triq24lIdcAaH0RlNEIVfCVO5AL8NAvrhmz7o5fx3VXrFcPnO5F+ozaUNpsvoPH3+eKVM=' '-proj' '/data/vpulav2/Work/Jasper/async_FIFO/synchronizer/synchronizer_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/async_FIFO/synchronizer/synchronizer_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_synchronizer.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/synchronizer.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5.sva
xit
exit
