# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 13:19:38 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 59888
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33743' '-nowindow' '-style' 'windows' '-data' 'AAABMHicZY7JCsJAEEQrikE8+A2eBQXFY85e4wJeJbjEEXWGmCh40U/1T+JLMEKwm+nprqpePEnBM89zldZ8EHyFmuI/897fJPBUt6Ju1JH5q/ZLraq5kvi8rga6yGqtWJkMSB8k0gm3uoNn8Feiw60SpdppCx5qibqNeg9zI+9x60wrOEOPoyfVAnWsIdmGiVIHvWOK1ZFq8qc07Co2JEwpboh05o2pRjAH+tLy9g8LHSer' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/inputRegister/inputRegister_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/inputRegister/inputRegister_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_inputReg.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/inputReg.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

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
