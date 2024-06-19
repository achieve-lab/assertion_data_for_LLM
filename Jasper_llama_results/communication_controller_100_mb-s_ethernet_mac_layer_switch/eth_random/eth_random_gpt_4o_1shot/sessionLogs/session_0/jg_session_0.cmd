# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 20:00:38 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 933129
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44761' '-nowindow' '-style' 'windows' '-data' 'AAABLnicbY7BCsJADERfFYt48Cs8CRYEjz17rSJ4LaLVKtpdaqvgRT/VP6nTYoUFEzbJzkzCeED4rKqKJroPFZ+IufIX3vs7hB5u1P+OiyxfTodeu9xKfL0hEzIMMQdKjkLGQjaclYa78FL8VdUqDTkFCTvhESup+1Lvxdw0j+R1wVpcIlWqnutSJrXhQiBsq6sw0I4VZzjpF/xV136s8JhZ424qD6mmonH+Ab0yJzw=' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_random/eth_random_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_random/eth_random_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_eth_random.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_random.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva

# Elaborate design and properties
elaborate -top eth_random

# Set up Clocks and Resets
clock MTxClk
reset Reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
