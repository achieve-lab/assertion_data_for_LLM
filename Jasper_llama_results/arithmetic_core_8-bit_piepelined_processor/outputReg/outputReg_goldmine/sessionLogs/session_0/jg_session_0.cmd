# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-24 20:05:06 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 9541
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42149' '-nowindow' '-style' 'windows' '-data' 'AAABInicbY7NCsJADIS/VSziwYcQT4I+Qc9e6w94FbFalNot2ip40Uf1TdZZscKCEzabzExCDBA/nHN80L4rRSRMFT+Y17eIDSF83wqZ+TP4odMMN5ZIr8+YAsuajJqDmJGYDbnCchNfS78olwrLmYodqfiEpdxdufdSrqoHunXGSpqVvxLr80L+jImqrXZCTxOl9liO6oZ/vP4WK2/KSRcV4jze8ZQlQA==' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_8-bit_piepelined_processor/outputReg/outputReg_goldmine/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_8-bit_piepelined_processor/outputReg/outputReg_goldmine/.tmp/.initCmds.tcl' 'FPV_outputReg.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/outputReg.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva

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
