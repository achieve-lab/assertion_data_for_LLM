# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-14 19:19:42 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 263381
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43919' '-nowindow' '-style' 'windows' '-data' 'AAABRnicfY7LCoJQEIZ/iyRa9CBBPYG7oFVgUbQVybKLecS026YetTexT8nATTOcOTP/BX5LkvMsikJVtR8MW64m9K+s93dxLDWrvFtNZP5q/FKnNtcSm9fXULGMPIXKtQcZgPiKaKMreA5/Zia0UapMGwXgrhaou6i3MBf2EVlnWsGlummKLtZSd9ixdlxrHZkpuow9wtHDnYAYHapg/31lRoMv0ImkMZjH5cOE7GV9AMhILCY=' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/rxLenTypChecker/rxLenTypChecker_goldmine_large/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/rxLenTypChecker/rxLenTypChecker_goldmine_large/.tmp/.initCmds.tcl' 'FPV_rxLenTypChecker.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxLenTypChecker.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine_large.sva

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
