# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-24 19:57:34 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 8963
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44669' '-nowindow' '-style' 'windows' '-data' 'AAABHnicZY7NCsJADIS/VSziwWcQj4I+Qc9e6w94FbG1VKq7aKvgRR/VN1mnxQrFhM0mM5MwBgif3nvq6D5UAiLmyl+Y97cJDe2o5k4bWb5aP/Sa5UYS6A2ZcsayJaUkEzIRsiNXWu7CS/FXVae0XChIiIVHrKXuS30Qc1M/ktcFG3GZdpx2ClZSp8zU7XURBtI7XbEcNY3/lJUPK2XMqeaS2ukHSxYkOg==' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_8-bit_piepelined_processor/inputRegister/inputReg_goldmine/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_8-bit_piepelined_processor/inputRegister/inputReg_goldmine/.tmp/.initCmds.tcl' 'FPV_inputReg.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/inputReg.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva

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
