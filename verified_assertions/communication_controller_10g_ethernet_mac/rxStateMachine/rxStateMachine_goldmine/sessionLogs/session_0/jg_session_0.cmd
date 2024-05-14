# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-13 12:37:47 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 102162
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43953' '-nowindow' '-style' 'windows' '-data' 'AAABNnicfY7NCsJADIS/VSziwQcR7RP07E2qCF5FWn+p3VJbFS/6qL5JnZVW6MUJm2wmMyEGCJ5VVfFF96HkETJV/GDe9ScwtOH6TptZvFoVeo25kXh6QyakWNbsKTmKGYnZkCgsN/Gl5hflTGHJKdgSiw9ZSt2XeqfJVf+xbp2z0iznrmmhPU49U404aHuqzhcXaTsM5M2ktZzU+X9d7j4rV8y5Zhw+EFoo9g==' '-proj' '/data/vpulav2/Work/Jasper/rxStateMachine/rxStateMachine_goldmine/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/rxStateMachine/rxStateMachine_goldmine/.tmp/.initCmds.tcl' 'FPV_rxStateMachine.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxStateMachine.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva

# Elaborate design and properties
elaborate -top rxStateMachine

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
