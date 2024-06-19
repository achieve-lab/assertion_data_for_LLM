# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-14 13:15:33 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 251830
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37835' '-nowindow' '-style' 'windows' '-data' 'AAABRnicfY7LasJQEIa/KEpx4YMI+gTuCl0JqShupdVe1DQnROOlm/ZR+ybxi2ghG2c4c2b+C/wRMPwpy5JLNb8dbWKe7P+K/q7LMKJe1d2oI+Pf2g+tm/kmafu69EkJzPmgYCXSE3khsQMH8UJ+68zsQM6ON5biMRPVD6rfZfbuA7M+M5PLOTJSlzLlJPvIp9eCjTNXt3NPdHR0ZyKB9SXYfV+VMehb8mXSVGyur/B6Fa/qDMj+LDg=' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/rxLenTypChecker/rxLenTypChecker_goldmine_jumbo/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/rxLenTypChecker/rxLenTypChecker_goldmine_jumbo/.tmp/.initCmds.tcl' 'FPV_rxLenTypChecker.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxLenTypChecker.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine_jumbo.sva

# Elaborate design and properties
elaborate -top rxLenTypChecker

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
