# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:48:28 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 858992
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39637' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY+9CsJAEIS/Uwxi4XOIoKBYpraNItgGiRoVyYX8KNjoo/omcXIYIYW73P7Mzix7BvCfVVXhrPtQ8AhYyn9m3t/CN7St7jttZP1qZeg14obi6Q2ZkGAJiSk5CxkL2XGVW+7CS81zxVRuySg4sBcesBG7L/ZRk5vqkW5dsdUs0oZEORM31tbcqTKmypE2w0C6VIjlom7+V1HflaoOWbgrZ5qcVBXuBx8Rwiju' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_register/can_register_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_register/can_register_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_can_register.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_register.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva

# Elaborate design and properties
elaborate -top can_register

# Set up Clocks and Resets
clock clk
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
