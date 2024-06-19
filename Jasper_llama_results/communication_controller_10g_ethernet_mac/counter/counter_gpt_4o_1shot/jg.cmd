# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 15:40:37 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 708079
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39147' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7NCsIwEIS/KBbx4CN4FkFB8Niz1yqC1yL1ryKm1FbBiz6qb1InwQp1l+xOZmeTMUD4rKoKH+2HSkDEXPkL8/6C0NAMd281meWr0aFTL9eSQKfPmAuWmAMlqZiRmA1npeUuvtT8qpopLTkFO7biI1ZSd6Xea3ITHsjrgrVmiZRuz2lzJuqJ3oOe1JkYy0m34Z/OeciEY2be0VT/HoUK7/YD4qwk7g==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10g_ethernet_mac/counter/counter_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10g_ethernet_mac/counter/counter_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_counter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/counter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva

# Elaborate design and properties
elaborate -top counter

# Set up Clocks and Resets
clock clk
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
