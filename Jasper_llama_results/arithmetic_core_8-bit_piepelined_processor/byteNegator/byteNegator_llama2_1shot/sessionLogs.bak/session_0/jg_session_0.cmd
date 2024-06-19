# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 21:05:17 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 151750
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36265' '-nowindow' '-style' 'windows' '-data' 'AAABMnicdY7NDsFQEIW/SzRi4TEsJATrri2VSGyb+iuC29ASNjyqN6njRiVdmMn8nXNmMgbwH3me46x6V/IIGMp/Zl7fxjeU7TNXysjkWapQK5YLiado0uGIJSQmYyukLSRiL7dchWfiz8qJ3HIiZcVSeMBU6rrUazEX9S39OmYmbs7N6UaKWNdSt9lVXeguNLSVCLHsNPX+6EP3RcRBMdDU1x8bMan7/g1hNyfy' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/byteNegator/byteNegator_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/byteNegator/byteNegator_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_byteNegator.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/byteNegator.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top byteNegator

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
