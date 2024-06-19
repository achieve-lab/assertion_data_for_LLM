# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-13 16:11:51 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 124215
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36279' '-nowindow' '-style' 'windows' '-data' 'AAABJHicfY5NCsIwEIW/KBZx4Qk8gagn6NptFcFtKfWf0pTWKrjRo3qT+FqskI1vyGTm/YQYIHw652jRf6gFRCxVP5j3dwgNPpq95zPrl3fDoAt3lkBnzJwcS8yRmrOYqZiETGW5i6+lV+qFylJyZc9OfMRG7qHcByk3zTP9dcVW2knOSs5YL+ZtopQrIdW00J7qdRgpW0ixXLRN/qYafABM1SWS' '-proj' '/data/vpulav2/Work/Jasper/host_interface/host_interface/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/host_interface/host_interface/.tmp/.initCmds.tcl' 'FPV_host_interface.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/host_interface.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top host_interface

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
