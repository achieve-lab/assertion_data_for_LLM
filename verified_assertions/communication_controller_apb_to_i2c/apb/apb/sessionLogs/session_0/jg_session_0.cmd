# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-28 22:11:43 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 134127
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45809' '-nowindow' '-style' 'windows' '-data' 'AAAA+HicVY5NCsIwFIS/KBbpwqWHEPQEXXdbRXAr9RdLaYq1Cm70qN4kTqstZIa8vMzMS2KA6OWco8XwqRKQEIs9zOffRAYfzXngK6u3t8OoG+4igdaEOQWWLWdqLlJmUlJy0fKQXsuvVEvRcuXGkYP0hLXSY6VPcu7qp/rrko28VMqOhbJ73QOhUqVmLVn77s9v8AU+dRww' '-proj' '/data/vpulav2/Work/Jasper/apb/apb/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/apb/apb/.tmp/.initCmds.tcl' 'FPV_apb.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/apb.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top apb

# Set up Clocks and Resets
clock PCLK
reset PRESETn

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
