# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:54:30 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 866827
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44405' '-nowindow' '-style' 'windows' '-data' 'AAABWniclY/NCsJADISnikU8+CCCguBJehSvVQSvpdR/pFv6o+hFH9U3qV9XK/RowibZmUk260jyHmVZylr7TnDla47/zHl9C89R06p7q4ksn40sdermWuJy+hoqllGgvQodQQYgoc640RW8gM+ICW6UKtdWG3BfK9Rd1DuYC/WUXRdaw0VMiMkp2j1TM9uVgoTUN8t98ggm4i2px6QEjdGJ2+yPGdXuCWygif3JGPxAldtfvgHKujC4' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_register_asyn_syn/can_register_asyn_syn_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_register_asyn_syn/can_register_asyn_syn_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_can_register_asyn_syn.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_register_asyn_syn.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva

# Elaborate design and properties
elaborate -top can_register_asyn_syn

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
