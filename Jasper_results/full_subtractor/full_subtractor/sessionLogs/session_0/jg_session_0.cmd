# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-23 12:26:59 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 24640
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34665' '-nowindow' '-style' 'windows' '-data' 'AAABKHichY5LCsIwEIa/KBZx4RE8gGBP0LXbKoLbotWKIk2pVsGNHtWbxD/FClk5Q+bxP4YYIHk652ij/1CJSJkrf2He3yExhOH3XogsX0GHQWfuJJHemBkllowDDUchUyEbzkrLXXgj/qJaKS01V/bshKespB5KXYi5aY711wVrcYX0/kLWOrfy1LqZq/sLsXouFkZyV0IsJ22TPz4fH/dPJrA=' '-proj' '/data/vpulav2/Work/Jasper/full_subtractor/full_subtractor/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/full_subtractor/full_subtractor/.tmp/.initCmds.tcl' 'FPV_full_subtractor.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/full_subtractor.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top full_subtractor

# Set up Clocks and Resets
clock -infer
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
