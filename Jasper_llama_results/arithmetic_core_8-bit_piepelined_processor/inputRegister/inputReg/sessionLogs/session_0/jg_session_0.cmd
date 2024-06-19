# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-19 20:23:36 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 277813
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:32987' '-nowindow' '-style' 'windows' '-data' 'AAABDHicZY5LCsJAEETfKAZxETyCa0FPkLXbGAW3In5CJDiDJgpu9KjeZKyIEQarmf5UVTdjgOThveeD7l0pImWm+MG8vk1iCNHMnZDJnkGFXrvcWiK9mAknLGtyagoxYzEbSoXlJr6WflF2CsuZij078SlLuftyH6Rc1Y/01zkraYV2nHYqFnLnTNVtdREG8jtdsRw1Df+cDd7MRSB6' '-proj' '/data/vpulav2/Work/Jasper/inputRegister/inputReg/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/inputRegister/inputReg/.tmp/.initCmds.tcl' 'FPV_inputReg.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/inputReg.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

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
