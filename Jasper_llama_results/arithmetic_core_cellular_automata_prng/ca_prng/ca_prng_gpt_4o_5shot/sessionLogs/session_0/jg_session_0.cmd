# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 17:55:05 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 809356
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38423' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY5PD8FAEMV/JRpx8BGcRcKJW8+uJRLXjRRFxDbVkrjwUX2T9bpRSc1k58+bN7MvAKKncw5v7YdCSMxc/rPg/S2igKZVfauJLF+NDJ16uaaEen3GXLAYUkqOQkZCNpzllrvwUvOrYia35BTs2AqPWYndFXuvyU31QFoXrDVLdMEIzbWbMtFOonvQE7tCLSd1wz9epSET1zD1imb696Cq8Go/0Sgkpg==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cellular_automata_prng/ca_prng/ca_prng_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cellular_automata_prng/ca_prng/ca_prng_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_ca_prng.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ca_prng.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva

# Elaborate design and properties
elaborate -top ca_prng

# Set up Clocks and Resets
clock clk
reset reset_n

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
