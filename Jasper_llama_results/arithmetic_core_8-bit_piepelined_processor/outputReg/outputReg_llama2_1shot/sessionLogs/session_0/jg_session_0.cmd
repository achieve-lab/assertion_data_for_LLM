# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:01:41 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 61700
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44663' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY65CsJQEEVvFINY+BGWooLWqW3jArYhuCSK+oK+KNjop/on8SQY4YEzzHbnzuJJCp5FUaiS5gPnK9QU/Yn3/iaBJ1fKuuEi85cTpVY9XFN8rKuhzjKKlCjXHqQPEuuIGt3Bc/pXfIYaXWS11QY81BJ2G/aOzo28x68zregZ+Ba09Av4iUZka3ZKHSYy9hgdqAZ/uFF1PdYJm1CNuZ/Cs9XXHyRMJoA=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/outputReg/outputReg_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/outputReg/outputReg_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_outputReg.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/outputReg.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top outputReg

# Set up Clocks and Resets
clock -infer
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
