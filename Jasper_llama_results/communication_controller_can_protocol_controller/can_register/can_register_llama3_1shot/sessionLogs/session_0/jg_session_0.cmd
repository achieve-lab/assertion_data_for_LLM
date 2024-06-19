# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:00:15 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 33312
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34687' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY+9CsJAEIQnikEsfA4RFNQ2tW0UwTaEqDGiuZAfBRt9VN8kfh5GSOEutz8zO8ueI8l71HUta907wZWvJf4z5/UtPEdt+/SdNrJ+trLUa8TNiMsbaqJURoFiVUpAxiChzrjRDbyCL4gZbpSr1F47cF8bpvtMH2Cu1CNuXWkLF7EhJefMxmwtrCrXlByxWRqgy0CMTnTzv4rAXhLqwlvQzWCOqEr7gzcQnijb' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_register/can_register_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_register/can_register_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_can_register.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_register.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

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
