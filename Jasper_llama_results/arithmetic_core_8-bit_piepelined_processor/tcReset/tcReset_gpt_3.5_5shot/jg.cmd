# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:41:34 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 642075
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34739' '-nowindow' '-style' 'windows' '-data' 'AAABJHicVY5LCsJAEERfFIO48AgeQNCNZJe12/gBtyL+JTjBTBTc6FG9yVgZjDDd9K+qeqYjIH055/DWfirFZEzlf4s+vyaNCK2eWyEyfwcVOs1yI4kVfUZcMaw5UnEWMhSyIZcbHsIr8aVyITfcsOzZCc9YSt2V+iDmrn6gW2esxFm2LKQrFZaxn3MpelIXesNw8T+FuvqGwteJdhLVRMxJauvv/QIVHySb' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/tcReset/tcReset_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/tcReset/tcReset_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_tcReset.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/tcReset.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -top tcReset

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
