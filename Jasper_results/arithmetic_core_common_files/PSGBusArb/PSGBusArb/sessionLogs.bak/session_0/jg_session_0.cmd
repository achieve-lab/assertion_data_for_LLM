# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-07 19:29:47 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 7410
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44475' '-nowindow' '-style' 'windows' '-data' 'AAABEHicbY5NCsIwEIW/KBZx4cIjuBT0BN3oQpetCG7F32Ipplir4EaP6k3iq1gh4BsymXk/IQYIH845Pmje1QIipqofzOs7hAYf1d7wmfnTu6FVh2tLoNNlyAnLioSSo5iBmDWZynITX0ov1HOV5cyFPTvxEQu523IfpFw19/XXmKW0WNqMiVIFY2U2jJTb6k3oKJGLs6Taen+8Fd4sKiA0' '-proj' '/data/vpulav2/Work/Jasper/PSGBusArb/PSGBusArb/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/PSGBusArb/PSGBusArb/.tmp/.initCmds.tcl' 'FPV_PSGBusArb.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGBusArb.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
exit
