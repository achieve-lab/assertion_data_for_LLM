# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 10:41:02 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 39807
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:32983' '-nowindow' '-style' 'windows' '-data' 'AAABOnicfY/NCsJADIS/Khbx4IMICqLHnnutIngt9adWqW7RVtGLPqpvUqeLFXoxIdlkZrKbdQDvWZYl1toPJZcAX/4z5/0tPIemVX2ricxfjRM69XAtcRV9hpwwhOwo2AsZCIlI5Yab8EL8RTmTG87kbNkID1hI3ZU6FnO1kz4zluJiEulCVqpS7qqqN6q/jISvhUFPk5nuMxzUTf/MhHabiKNiom6sfRJxuf3FB5/YKR8=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/fht_bfly_noFF/fht_bfly_noFF_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/fht_bfly_noFF/fht_bfly_noFF_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_fht_bfly_noFF.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_bfly_noFF.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva
exit
