# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-12 16:27:33 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 78926
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46443' '-nowindow' '-style' 'windows' '-data' 'AAABDHicZY5LCsJAEETfRAziQjyCa0FPkJ3gNorgVkKM4gcnRKPiRo/qTcaKGGFINdOfqupmDBA9nXN80XoohcRMFX+Y96+JDD6qOfCZ+cur0K6Xa0uo12PECcuKLSU7MUMxCUeF5Sa+lH5WzhWWggsZa/ExC7k7cm+kXNUP9NcZS2kFdya6cNDVTPtjbaWaoSt/Lt2y19RvOCt8AMb5IFo=' '-proj' '/data/vpulav2/Work/Jasper/rxClkgen/rxClkgen/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/rxClkgen/rxClkgen/.tmp/.initCmds.tcl' 'FPV_rxClkgen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxClkgen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top rxClkgen

# Set up Clocks and Resets
clock rxclk_in
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
