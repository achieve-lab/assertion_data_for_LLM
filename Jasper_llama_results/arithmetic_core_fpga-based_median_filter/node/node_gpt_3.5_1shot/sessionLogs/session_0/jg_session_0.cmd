# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:35:48 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 845746
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35131' '-nowindow' '-style' 'windows' '-data' 'AAABGHicVY5BCsIwEEVfFIu4cO0BXAkKIu66dltFcFvEqlXEBG0V3OhRvUn9KbbQGTKZ/P+SjAHCd1EUlNF+qQRELJR1mO+/CQ3N8OdWU1l9Gjt0qssVEmj1GXPFEnMk5yRlJGXLRWl5Ss/l31Wd0nIjY08iPWItuiv6IOehfqBZl2zk+RcTcRPRO70EPXFOty1nnYY14f91omJmoufap/otlZuVM/4ATFMiIw==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_fpga-based_median_filter/node/node_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_fpga-based_median_filter/node/node_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_node.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/node.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
