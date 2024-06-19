# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:15:19 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 70758
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37051' '-nowindow' '-style' 'windows' '-data' 'AAABOnicfY/NCoJQEIU/iyRa9CBBQdTStVuLoK2I/Yp5pdSgTT1qb2LHSwZumuHOz5k5h7kO4D3rusZa/6HgEuDLf+a8v4Xn0LWm73WR9auTYdCS2xVXb8yUDEPIkZKzkImQiFRuuAsvNb8p5nLDlYI9O+EBG20PtX3QpLJMnxVbzWIpVFKIVafaz6x+k2fix8JgJGYuPUOibvmHE9prIi56C3Vz3XMSr7C/+ACxhClz' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_len_gen/cavlc_len_gen_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_len_gen/cavlc_len_gen_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_cavlc_len_gen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_len_gen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva
exit
