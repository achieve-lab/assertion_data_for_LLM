# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 22:22:17 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 86266
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36257' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7NDsFQEIW/SzRi4RGsRUJC2HVtWyKxbRo/RXAbWsSGR/UmddyopGZy5+ecc2fGAP4jz3OcVe8KHgFj+c/M61v4hrJ9+koZmT5LGWrF50Li6TXpcsQSEpOxFdIRErGXW67CM/FnxURuOZGyYik8YCZ1Xeq1mIvqlm6dMBd3kP7GUFpLn57yQvOgIXWiGZaduvafLnRbI6ERA3Uj7d2ISd21b7qGJCI=' '-proj' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/mux4to1/mux4to1_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/mux4to1/mux4to1_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_mux4to1.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/mux4to1.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top mux4to1

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
