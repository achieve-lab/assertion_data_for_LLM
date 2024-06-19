# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:13:22 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 622814
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42603' '-nowindow' '-style' 'windows' '-data' 'AAABJHicVY5JCsJAEEVfFIO48AgeQFAQcZeVC7dxALfBKQ6oHWKi6EaP6k3iT5MIqaKrqv//NTiA986yDGv1l4KLz0T+N+dbFJ5D1fJ/rYrMPpUMjbK5lLh6bXpcMQTsSTkK6QpZcZYbHsJT8TfFSG6ISdixFe6zkLopdSjmrrqjW6csxcWacGHM06r7ihvNg5bUkVjDyW5aF4q51ec3RPoHDNUzUh5o80HqxN77AxL3JIs=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/byteRam/byteRam_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/byteRam/byteRam_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_ramByte.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ramByte.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva

# Elaborate design and properties
elaborate -bbox_m byteRam

# Set up Clocks and Resets
clock clk
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
