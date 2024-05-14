# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-06 21:10:35 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 75447
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35671' '-nowindow' '-style' 'windows' '-data' 'AAABNnicfY5BD8FAEIW/JRpx8EOE/oKeXUskriJtSYXuBou48FP9k3orKunFm+zM7HvzJmOA5FHXNR9070oRKVPFD+b1bRJDG+HfaTPzZ6tCrzE3I5HekAkVlhVbPKWYkZg1e4XlKt5LPyk7heXImYJcfMpC031Nb6Rc1I9164yltMB41YIbmbKTq5Q7bIrVZ9oOA3mdNlp2+sV/XeE+K1fOQVwlNeANMtIpjg==' '-proj' '/data/vpulav2/Work/Jasper/fpu_exceptions/fpu_exceptions_goldmine/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/fpu_exceptions/fpu_exceptions_goldmine/.tmp/.initCmds.tcl' 'FPV_fpu_exceptions.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fpu_exceptions.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva

# Elaborate design and properties
elaborate -top fpu_exceptions

# Set up Clocks and Resets
clock clk
reset rst

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
