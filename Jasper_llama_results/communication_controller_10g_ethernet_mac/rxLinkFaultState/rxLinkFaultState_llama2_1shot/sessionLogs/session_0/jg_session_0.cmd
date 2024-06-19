# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:49:18 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 33799
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42741' '-nowindow' '-style' 'windows' '-data' 'AAABRnichY+9CsJAEIS/KAax8EEERS0ltZUQJWAbgv8ac0ETFRt9VN8kjocRUrnL/s3OHHsO4D2KosBa/a7k4jOW/8x5fRvPoWqfuVZFZs9KhUYpLimuok2XBEPIhpydkI6QiFhuuArPtT8rp3LDiYwVS+E+gdhNsdfaXNT3deuUuXYnbkz0WsJBWCR1LF2giKy+p7wQBi3pU/ENe02jv8rQXhZxVAw1DXTbVurM/ugNz0Qr6A==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxLinkFaultState/rxLinkFaultState_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxLinkFaultState/rxLinkFaultState_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_rxLinkFaultState.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxLinkFaultState.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top rxLinkFaultState

# Set up Clocks and Resets
clock rxclk
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
