# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:12:00 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 53228
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41207' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY7NDsFQEIXPJRqx8AzWEhLWXduWSGybhl4luA0tiQ2P6k3qc6OSmsn8nTnzYySFj6qq5KV9xwWKNEN/Yl7fJDRqyqduNZHFsxGlTj1cUwKsr5FOcoq1VakdyBAk0QF1uoGX9C/4HHU6q1CqDXikJewubEvnSj7g17lW9FJYGdGy0TI1pl6zUerBz9nitPe3/pmxv5zoiE2pJtzOwAv/8RtvjyVm' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_fifo/eth_fifo_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_fifo/eth_fifo_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_eth_fifo.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_fifo.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -bbox_m eth_fifo

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
