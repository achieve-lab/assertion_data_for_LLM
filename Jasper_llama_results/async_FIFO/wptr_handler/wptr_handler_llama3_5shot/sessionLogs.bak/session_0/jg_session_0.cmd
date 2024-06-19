# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 21:25:57 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 82429
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41685' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY/NCoJQEIWPRRIteo4IalG0c93WImgr0p+GecWuCW3qUXsT+5IMXDTDvXfmm3NkdCR5j6qqVEf3zuXK15L8hfP6Fp6jdnz6Tpusn61X6jXmRuJyhpoolVGgkwrFkDEkVEIalfCC+ZU7I41yWR20h/vaoO6jPjK5UY/YdaUtsxJi0QaK+FaKPsGVawrdUUsDfBnE6Ew3++sI6k1CXThzugW7RLhs/QdvH9YpBw==' '-proj' '/home/vpulav2/Work/Jasper_llama/async_FIFO/wptr_handler/wptr_handler_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/async_FIFO/wptr_handler/wptr_handler_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_wptr_handler.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/wptr_handler.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
