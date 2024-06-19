# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-28 18:34:57 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 152115
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34677' '-nowindow' '-style' 'windows' '-data' 'AAABLHichY7BCsIwEERfFIt48Bs8C4of0LPXKoJXkapFkaYkVtGLfqp/EqfFCj05S3azMzubGCB+hhCo0X0oRSTMFT+Y9/cSG9qo+k6bWb5aFXqNuRmJdIZMyLFsyCg5ihmL2XJWWG7iS+leuVBYHBf27MQnrDTd1/RBylX3mf66YC0t1YZc1Wk201Zfu5wYz13KVH2qF2AgfyHFclI3+uus8AGP7idc' '-proj' '/home/vpulav2/Work/Jasper/can_register_syn/can_register_syn/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/can_register_syn/can_register_syn/.tmp/.initCmds.tcl' 'FPV_can_register_syn.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_register_syn.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
exit
