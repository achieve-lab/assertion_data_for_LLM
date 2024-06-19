# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 17:36:37 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 297146
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44953' '-nowindow' '-style' 'windows' '-data' 'AAABKHicZY69CsJAEIS/KAax8BmsRQURu3SCbRTBNojG+IcXYqJio4/qm8RJMMLhLrc/M7N76wDeM89zSqs/FFx8pvKfOe9v4TnYVvQ1G5m/rAyNariSuHpt+pwxBERk7IV0haw4yQ034Zn4i2IsNySkhGyE+yykbkq9FXNV3dGtM5biEu5MtOGoraHmB5paq4eW9LF4w0Fd709Z3BFLHTDS1Fh5qN930qflzR+zXSVj' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/rxClkgen/rxClkgen_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/rxClkgen/rxClkgen_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_rxClkgen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxClkgen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5.sva
exit
