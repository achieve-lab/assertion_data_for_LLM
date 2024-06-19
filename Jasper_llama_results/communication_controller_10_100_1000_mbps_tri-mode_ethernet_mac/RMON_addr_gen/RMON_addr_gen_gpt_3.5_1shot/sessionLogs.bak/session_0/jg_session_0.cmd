# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 19:03:41 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 876885
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43675' '-nowindow' '-style' 'windows' '-data' 'AAABPHicfY/LCsIwEEVvFYu48EMEBRFddd2d1ge4LcXWF2KKtgpu9FP9k3parJCNMyST3DtnSBxJ3rMoClXRfLC5CuSTv3De34PnyI7y3rCVxcuqUquG6xaX1VVfZxmF2inXAaWHEulEGt3Rc/wre0oaXZQpUYweaEV3m+4tzq0ifc21xltqij/jFNEbQ5XzEyYN4DfMljqQKY7RkdvkD1PWFC7UCH5MHfKiPWRW/eMDuVwomQ==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/RMON_addr_gen/RMON_addr_gen_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/RMON_addr_gen/RMON_addr_gen_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_RMON_addr_gen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/RMON_addr_gen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
