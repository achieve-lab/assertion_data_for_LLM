# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-22 16:04:01 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 407675
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38261' '-nowindow' '-style' 'windows' '-data' 'AAAA/HicVY5BCsIwEEVflBZx4dozFPQEXbutInQrYlUUMaVaBTf2qN4k/hQj5A+ZTP68GWKA/O2co9fwpZRSsFD8ZT6/IjfE8u9B7Ky66IYkDAck1Zkw44plw5GWk5xMzpaLwvKU36p/U64VloY7eyr5BWvRI9EHdR6qp/rrklI9v7ESNxe90yYYi6s1bTn3U4Hw+gK7zx0a' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_fpga-based_median_filter/node/node/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_fpga-based_median_filter/node/node/.tmp/.initCmds.tcl' 'FPV_node.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/node.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
exit
