# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 18:39:02 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 62317
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43583' '-nowindow' '-style' 'windows' '-data' 'AAABPnicfY/NCsJADISnikU8+CCiXkRPPXutIngtpf5VtFv6o+BFH9U3qV8XK/RiQrLJzCRkHUnes6oqWes+SK58LfGfOe9v4TlqW9132sj61XqlXjPcSFxiqIkSGQU6qlQMMgIJdcGN7uAlfE5OcaNMhfbagfvaoO6jPsDcqMfcutIW7oQyRxmwMbETGapQEdWUPmK7NGA2hTE60y3+TgX2olBXYkY3R1nrC/uTD3wBKpc=' '-proj' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_crcahb/host_interface/host_interface_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_crcahb/host_interface/host_interface_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_host_interface.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/host_interface.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva

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
