# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:11:12 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 26394
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45505' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY5PD8FAEMV/JRpx8BmcJVzErWfXEolrs0HRqG1oSVz4qL5JPRuVrJns7Mx7b/4EQPSo6xpn7btCSMxM/rPg9U2iAN8+dctHFk/vh07T3EhCvT4jTlgSdlQchAyFGI5yy014Jf6iWMgtZ0q2bITHLKXuSp2KuSof6NY5K3GpJqVuai51zlhda02EnvSFplgyt+tfmbjNRplhomqq3Xvxpbv4DW65JWc=' '-proj' '/home/vpulav2/Work/Jasper_llama/async_FIFO/fifo_mem/fifo_mem_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/async_FIFO/fifo_mem/fifo_mem_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_fifo_mem.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fifo_mem.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
