# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:37:24 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 31001
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39175' '-nowindow' '-style' 'windows' '-data' 'AAABRnichY/NDsFAFIVPiUYsPIiEYCld25ZIbJumKEKn6Q9hw6N6k/pMVNKVezP355x77sw4krxHVVWy1r4TXPma4z9zXt/Cc9S0T99qIstnI0udWlyPuJy+hkpkFChWqQPIACTUCTe6gpfwOTHFjTIV2moD7mvFdJfpHcyFesxbF1rDRWxIyBmzMVtzq8pAct1gRvQRN0g99CmM0ZFu9lcZ2JeFOnOmdBPwPerC/ugN7bwsXA==' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_register_syn/can_register_syn_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_register_syn/can_register_syn_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_can_register_syn.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_register_syn.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top can_register_syn

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
