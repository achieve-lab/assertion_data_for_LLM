# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 17:22:34 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 770557
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44903' '-nowindow' '-style' 'windows' '-data' 'AAABSHicfY+7CsJAEEVvFINY+CGiNpIuhZVtFME2hBhfSDbkoWCjn+qfxJPFCGmcYXdm7mPYdST5z7quZaP/4HIVaEX+wnl/G99RN5q510U2r06VBq25lbicsWZKZRTqqEpnkAlIpCtpdAev4AvujDTKVSrRHjzQFvUQ9QHmRj/lrWvt4E4oC5QhG1PryFFFiunmzDHbpRHeDMbowrT86wqpCWzzzsxqFmzyqB5o4yztnz43Vyw/' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_aes128/host_interface_aes/host_interface_aes_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_aes128/host_interface_aes/host_interface_aes_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_host_interface.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/host_interface.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva
exit
