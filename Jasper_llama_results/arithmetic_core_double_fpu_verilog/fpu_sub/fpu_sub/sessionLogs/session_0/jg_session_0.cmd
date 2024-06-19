# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-06 20:21:21 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 72962
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36105' '-nowindow' '-style' 'windows' '-data' 'AAABCHicVY5NCsIwEIW/KBbpwiN4AEFP0LXbVgS34j+KNKU1Cm70qN4kvhQr5A2Zmbz3ZhIDZC/vPS36T6WEnLniD/P5NZkhRrj3YmbxjioMuuHOkuiMmFJiWXPCcRYzEbPhqrA8xDvpjXKlsNTcOLAXn7OUeyj3Ucpd/Vh/LVhJC4xTDXNbZprZaR+kclfaYbm0b8e+gC9GLx/C' '-proj' '/data/vpulav2/Work/Jasper/fpu_sub/fpu_sub/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/fpu_sub/fpu_sub/.tmp/.initCmds.tcl' 'FPV_fpu_sub.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fpu_sub.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top fpu_sub

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
