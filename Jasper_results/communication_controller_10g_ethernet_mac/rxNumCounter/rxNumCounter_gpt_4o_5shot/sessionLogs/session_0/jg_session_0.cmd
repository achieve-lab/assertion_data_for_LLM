# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 23:15:17 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 330992
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40881' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY/NCsJADIS/VSziwecQQQ+it94Ej1YRvBbxX9QttVXxoo/qm9TZYoUeTNhkMsmErAH8Z5Zl5FZ9KHgEjOQ/M+8v8A1lc3WlzExfpQy1QlyMeHpNOpyxhGxJ2Ytpi1lwlFtu4lP1L4qR3BKTsGYlPmCm6bqmN+pchVu6dcJcvZg7Y2lODKVxG5wqpqu81GZoSBeJsRxU9f4q3F2RcEg/v3KgW3ZCSf6DDxWWKPo=' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/rxNumCounter/rxNumCounter_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/rxNumCounter/rxNumCounter_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_rxNumCounter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxNumCounter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva

# Elaborate design and properties
elaborate -top rxNumCounter

# Set up Clocks and Resets
clock rxclk
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
