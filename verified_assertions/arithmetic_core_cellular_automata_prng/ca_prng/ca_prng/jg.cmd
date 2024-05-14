# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-13 13:31:17 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 80566
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42005' '-nowindow' '-style' 'windows' '-data' 'AAABCHicVY5BCsIwEEVfLBZx0SN4AEFP0LXbKoLbUqoWRUypVsGNHtWbpD/FCvlDJsmbP5MYIH075+gVvZRiMlaKv8z3d0gNofx9FJLNJ9hhPDQPllgrYcEVS05Fy0lkLlJwUVie4q3qN+VaYWm4c2AvnrGVeyL3UZWHzjP9dc1OtVITctFGvRVL9ZSaB1O5PbWc+7dDn1cHPrsfjg==' '-proj' '/home/vpulav2/Work/Jasper/ca_prng/ca_prng/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/ca_prng/ca_prng/.tmp/.initCmds.tcl' 'FPV_ca_prng.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ca_prng.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top ca_prng

# Set up Clocks and Resets
clock clk
reset reset_n

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
