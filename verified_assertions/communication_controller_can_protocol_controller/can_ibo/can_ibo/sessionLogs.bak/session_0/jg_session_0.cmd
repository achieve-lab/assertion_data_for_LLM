# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-28 18:45:52 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 154594
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38291' '-nowindow' '-style' 'windows' '-data' 'AAABCHicVY5BCsIwEEVfLC3iokfwAAU9QdduqwhuxbYqFWmKWgU3elRvEn+LFfKHzEz+/zOJAdKXc44ewVMpImOh+MN8fk1q8NHdRz6zensVwmF4sEQ6MTNqLFuOtFRiEjE7zgrLQ3wr/arcKCwXbuwpxWes5R7LfZByVz/VX5dspBXaUKtW5JqZa6bQPpjI3WiH5dS/7fs6fAE7Wx9w' '-proj' '/home/vpulav2/Work/Jasper/can_ibo/can_ibo/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/can_ibo/can_ibo/.tmp/.initCmds.tcl' 'FPV_can_ibo.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_ibo.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
exit
