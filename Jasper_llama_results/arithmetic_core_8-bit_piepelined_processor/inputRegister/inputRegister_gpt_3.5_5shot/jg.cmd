# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:17:20 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 625907
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44327' '-nowindow' '-style' 'windows' '-data' 'AAABMnicZY7NCsJADISnikU8+AyeBb1IPfXstf6A1yL+1Iq4S90qeNFH9U3q12KFYsIm2clMEk9S+CyKQpW1HwRfkWb4z7z3twg9Na38t5rI4tXIUqcW1xSf19dIFxnFSpQrBRmCbHTGje7gOf0r0eJGmZz22oFHWsHuwj7QuVEPuHWuNb0UjUXjtISdaEy1ZaLUg2+ZYnTiN/1jpuwqN2TVRZY61gR9QA7oHVG66voPVnUnuA==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/inputRegister/inputRegister_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/inputRegister/inputRegister_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_inputReg.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/inputReg.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -top inputRegister

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
