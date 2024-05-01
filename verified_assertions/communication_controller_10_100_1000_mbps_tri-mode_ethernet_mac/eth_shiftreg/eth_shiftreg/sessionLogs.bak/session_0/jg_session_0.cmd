# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-23 22:17:48 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 24808
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41799' '-nowindow' '-style' 'windows' '-data' 'AAABHHicdY7LDsFQFEVXiUYMjH2CSPgCY9MSiakI9Ypog5KY8Kn+pFZFJR3YJ/c89tn73hsAw0ee53xQv5tCIkbGD8Hr2wwDqijmWpWZPCsVGqW5lISeNn2OJMzZkLGT6cksOBgJN/nM/dmcGgknLsSs5COmqpuq126u9l3/OmbmLla1tZ7NO/cXfbEvDOyW3gwtfalswt6p89dR4A0TBiPm' '-proj' '/data/vpulav2/Work/Jasper/eth_shiftreg/eth_shiftreg/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/eth_shiftreg/eth_shiftreg/.tmp/.initCmds.tcl' 'FPV_eth_shiftreg.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_shiftreg.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top eth_shiftreg
exit
