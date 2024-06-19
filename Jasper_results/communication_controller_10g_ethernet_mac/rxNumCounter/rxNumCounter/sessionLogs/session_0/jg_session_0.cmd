# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-12 17:38:58 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 85965
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41491' '-nowindow' '-style' 'windows' '-data' 'AAABHHicdY7NDgFBEIS/ITbi4OwRRMIT7E3iaInEVcRfCGYzLOLCo3qTUSNWMgfVmf6p6uqMAdKH954PqnelhIyB4gfz+japIUaYKzEzfkYVaqW5XEn0mnQ5YpmxoWArpiNmzl5huYovpJ+Uc4XFcWbFUnzGRNt1ba+lXNS39dcRU2mOG0N5DvTlCReCy9FTXegyNOTLxVh2mlp/HQFvEY4j4g==' '-proj' '/data/vpulav2/Work/Jasper/rxNumCounter/rxNumCounter/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/rxNumCounter/rxNumCounter/.tmp/.initCmds.tcl' 'FPV_rxNumCounter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxNumCounter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

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
