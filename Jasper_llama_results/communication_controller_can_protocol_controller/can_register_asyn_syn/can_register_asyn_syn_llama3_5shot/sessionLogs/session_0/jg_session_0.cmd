# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:51:46 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 32696
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42919' '-nowindow' '-style' 'windows' '-data' 'AAABWniclY+9CsJAEIQnikEsfBBBG7GRlGIbRbANIf6juZAfRRt9VN8kfp5GSOkud7s7Mzd350jy7mVZykbzxubK15T8hfP8Np6jerznRh2ZP2pValWHK4nL6qqvWEaBtiq0B+mBhDqSRhfwAj5jT0ijVLnWWoH7WqBuo97AnOnHvHWmJVyEQ0xN0W5xzeypFCSkv1ruUwcwEXdJHZwSNEYHpskfHoF9bagTa8g0At/hk9tfvgDJzjCp' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_register_asyn_syn/can_register_asyn_syn_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_register_asyn_syn/can_register_asyn_syn_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_can_register_asyn_syn.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_register_asyn_syn.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva

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
