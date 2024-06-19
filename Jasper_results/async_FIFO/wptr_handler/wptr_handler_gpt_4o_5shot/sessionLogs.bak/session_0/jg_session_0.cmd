# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 12:32:17 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 150711
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42457' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY+7CsJAEEXPKgax8DtE0EK0S20bRbAN4itKyIaYGLDRT/VP4t1ghBTOsLMz97HMGsB/VlVFHd2HikfAUvkL8/42vqEdbu60kfWrdUOvMTcST2fIhARLyJmCi5CxkB2x0lIKL8TfVFOlJSPnyEF4wEbqvtQnMXf1I+26YiuuFJJLGxLprUT6WK6MqdC9ehjIlwqxXDXN/jrcXo4JmddbLrRLpC6vf/ABIPopGg==' '-proj' '/data/vpulav2/Work/Jasper/async_FIFO/wptr_handler/wptr_handler_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/async_FIFO/wptr_handler/wptr_handler_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_wptr_handler.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/wptr_handler.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
