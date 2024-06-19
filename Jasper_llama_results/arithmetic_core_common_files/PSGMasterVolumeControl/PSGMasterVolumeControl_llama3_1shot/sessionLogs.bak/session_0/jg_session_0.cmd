# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:57:08 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 85232
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46837' '-nowindow' '-style' 'windows' '-data' 'AAABXniclY/LCsIwEEVvFYu48EMEBXHbnVBX0orgthTfok3pQ8GNfqp/Uo/BCl06Q5KZcyeXxJHkPaqqko32nc1VIJ/8hfP6Fp6jZnz6VpMsno1T6tSX6xGX1ddQiYwi7VXqCBlAYp1Joxu8RM/ZU9IoU6GtNvBAS6a7TO9QrtbYV6gVWog20xyf3M5nUINjqQvdlDqBZ5aNqNacUg+v1NITnf+XS2RfHKPEmtCNuXNAKexP3zOlMHU=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGMasterVolumeControl/PSGMasterVolumeControl_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGMasterVolumeControl/PSGMasterVolumeControl_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_PSGMasterVolumeControl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGMasterVolumeControl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva
exit
