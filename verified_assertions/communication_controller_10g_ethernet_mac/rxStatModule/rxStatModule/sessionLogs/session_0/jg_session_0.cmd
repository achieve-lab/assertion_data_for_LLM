# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-13 12:43:05 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 103471
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36973' '-nowindow' '-style' 'windows' '-data' 'AAABHHicdY5NCsIwEIW/KBZx4dojiKAn6NqdVBHcilgVpTSlpipu9KjeJL6KFbLwDZnMvJ8QA8QP7z0ftO9qEQlT1Q/m9R1iQ4h6b4XM4hnc0GnCjSXS6TMmx7LmQMVRzEjMhkxluYqvpJ/VC5WlxLEjFZ+wlLsr917KRfNQf52zklZyk+r0jmOmVKp8ptxE+1YT9JQr5LOctA3+Jmq8AQ6qI8Y=' '-proj' '/data/vpulav2/Work/Jasper/rxStatModule/rxStatModule/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/rxStatModule/rxStatModule/.tmp/.initCmds.tcl' 'FPV_rxStatModule.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxStatModule.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top rxStatModule

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
