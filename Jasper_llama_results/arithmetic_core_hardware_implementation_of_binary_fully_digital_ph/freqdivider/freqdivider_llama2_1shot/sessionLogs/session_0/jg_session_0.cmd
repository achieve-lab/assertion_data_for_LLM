# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:38:44 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 76083
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34317' '-nowindow' '-style' 'windows' '-data' 'AAABMnicdY7NDsFAFIXPEI1YeAwLCcG6a9sSiW3TMKWCKVoSGx7Vm9SnUUkX7s3cn3PPmRwjyX8URaEymneKp0BT8hfm9R18o3p89kYdmT9rXWpV4ori8boa6CinUBvlSkD6IJH2pNMNPOd+oaak01mZrNbggRaw27BjLlfmHl5nWnKL4Vmd4CVcEroFGaJd8a/UQZWCOO3YRn/4Yeki0oE3YRvjY4smK92/AWrDKBQ=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/freqdivider/freqdivider_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/freqdivider/freqdivider_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_freqdivider.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/freqdivider.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top freqdivider

# Set up Clocks and Resets
clock MainClock
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
