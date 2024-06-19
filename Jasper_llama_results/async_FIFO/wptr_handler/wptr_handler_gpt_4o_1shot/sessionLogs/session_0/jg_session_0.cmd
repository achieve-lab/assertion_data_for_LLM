# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 13:16:56 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 585556
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41153' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY9NC4JAEIafLZLo0O+IoKDo6LmrRdBVoi8LccU0oUv91P6JvSsZeGiGnZ15P5ZZA/jPqqqoo/tQ8QhYKn9h3t/GN7TDzZ02sn61bug15kbi6QyZkGAJOVNwETIWsiNWWkrhhfibaqq0ZOQcOQgP2Ejdl/ok5q5+pF1XbMWVQnJpQyK9lUgfy5UxFbpXDwP5UiGWq6b5X4fbyzEhi3rLmXaJ1OX1Dz4gwikW' '-proj' '/data/vpulav2/Work/Jasper_corrected/async_FIFO/wptr_handler/wptr_handler_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/async_FIFO/wptr_handler/wptr_handler_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_wptr_handler.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/wptr_handler.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
