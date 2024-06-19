# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-12 17:46:15 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 87388
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43151' '-nowindow' '-style' 'windows' '-data' 'AAABJHicfY5LCsJAEETfKAZx4Qk8gagnyNqdRBHcisQ/kgkxUXGjR/UmY40YYTZWM/2pqm7GAPHDOccHzbtSRMJY8YN5fZvYEMLPjZCZPYMKrXq5tkR6XYZkWJbsqDiI6YtZcVJYruIr6WflXGEpKNmwFp8wl7st91bKRf1Af52ykFZwk1rqjndPVFP2up5pGolLdR062s3ltRw19f5uebwBO3klNg==' '-proj' '/data/vpulav2/Work/Jasper/rxStateMachine/rxStateMachine/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/rxStateMachine/rxStateMachine/.tmp/.initCmds.tcl' 'FPV_rxStateMachine.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxStateMachine.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

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
