# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 15:33:36 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 699906
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36477' '-nowindow' '-style' 'windows' '-data' 'AAABWniclY+9CsJAEIQnikEsfBBBK20kpdhGEWxDiP9ILuRH0UYf1TeJX04jpHSX292bmd3bcyR5j7IsZa19J7jyNcd/5ry+heeoadW91USWz0aWOnVzLXE5fQ0VyyjQXoWOIAOQUGfc6ApewGfEBDdKlWurDbivFeou6h3MhXrKrgut4SImxOQU7Z6pme1KQULqm+U+eQQT8ZbUY1KCxujEbfbHjGr3BDbQ2P5kAn6gyu0v38ryMLw=' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_register_asyn_syn/can_register_asyn_syn_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_register_asyn_syn/can_register_asyn_syn_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_can_register_asyn_syn.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_register_asyn_syn.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva

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
