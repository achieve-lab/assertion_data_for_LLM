# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 14:53:00 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 205039
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33805' '-nowindow' '-style' 'windows' '-data' 'AAABKHicZY69CsJAEITnFINY+AzWojaSLrVtFME2SDQakVzQRMFGH9U3Ob8EIwR3uf2Zmd1bIyl4OudUW/dB8BRqgf/MvL9FYNS2qu+0kdWrlaVeM9xIPN5QU2WyinRQqRRkDLLVGbe6g5fwV2KOW11UaK8deKg16j7qBOZGPeLWpTZwMRsycsLGhKkZUzEbpQH6nC1WJ7rJn7K6I0cdac6UT/b5/QhT1Dd/AK5PJVU=' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_fifo/can_fifo_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_fifo/can_fifo_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_can_fifo.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_fifo.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -bbox_m can_fifo

# Set up Clocks and Resets
clock clk
reset rst

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
