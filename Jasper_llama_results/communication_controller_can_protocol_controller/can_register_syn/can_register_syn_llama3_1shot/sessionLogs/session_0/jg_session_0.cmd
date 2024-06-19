# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:37:33 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 31322
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39925' '-nowindow' '-style' 'windows' '-data' 'AAABRnichY/NDsFAFIVPiUYsPIiEEDvp2rZEYts0RRE6TX8IGx7Vm9RnopKu3Ju5P+fcc2fGkeQ9qqqStfad4MrXHP+Z8/oWnqOmffpWE1k+G1nq1OJ6xOX0NVQio0CxSh1ABiChTrjRFbyEz4kpbpSp0FYbcF8rprtM72Au1GPeutAaLmJDQs6YjdmaW1UGkusGM6KPuEHqoU9hjI50s7/KwL4s1JkzpZuA71EX9kdv7c4sXQ==' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_register_syn/can_register_syn_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_register_syn/can_register_syn_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_can_register_syn.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_register_syn.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

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
