# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:31:56 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 72880
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39245' '-nowindow' '-style' 'windows' '-data' 'AAABFnicVY47C8JAEIS/UwxiYW1tKWgh2KW2jSLYhmB8ol7QRMFGf6r/5JwcJpBd9jUze7cGCN/OOby1X0oBEXN5beb7b0JD08q51USWn0aFTrVcSQJFnzFXLDF7Co5CRkISznLLU3gh/q6cyS03crakwiNWUnel3ol5qB/o1gVrcamQ8oWJ1BtV6EmXadty0jSsFbHPCRfFVNNMfx2kyv2FPw6tIio=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/dpll/dpll_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/dpll/dpll_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_dpll.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/dpll.v \
  ${RTL_PATH}/phasecomparator.v \
  ${RTL_PATH}/freqdivider.v \
  ${RTL_PATH}/variableresetrandomwalkfilter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top dpll

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
