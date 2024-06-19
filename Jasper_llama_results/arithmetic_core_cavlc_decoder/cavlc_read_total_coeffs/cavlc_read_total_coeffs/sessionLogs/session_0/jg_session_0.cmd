# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-30 14:47:02 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 38761
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34589' '-nowindow' '-style' 'windows' '-data' 'AAABSHiclY7NCsIwEISnikU8+CCCfYLi0Wsrglcp1YoipvRP8KKP6pvEL8EKPbpDNpvZmSGBpPhprZWv8YMWKtEa/Cp4f4c40LDcezRkNq/BLU16cy8JOXMtdZPRXie1OsMsYDJdgdEdvmVf00tgVKnRUQf4RFvUU9QFm455xV9T7djlJHQk5MwV+sw7GvyNz3YKA1+AWhFsDivNSCtxGF14RX/muPoAVUks0g==' '-proj' '/data/vpulav2/Work/Jasper/cavlc_read_total_coeffs/cavlc_read_total_coeffs/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/cavlc_read_total_coeffs/cavlc_read_total_coeffs/.tmp/.initCmds.tcl' 'FPV_cavlc_read_total_coeffs.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_read_total_coeffs.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top cavlc_read_total_coeffs

# Set up Clocks and Resets
clock clk
reset rst_n

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
