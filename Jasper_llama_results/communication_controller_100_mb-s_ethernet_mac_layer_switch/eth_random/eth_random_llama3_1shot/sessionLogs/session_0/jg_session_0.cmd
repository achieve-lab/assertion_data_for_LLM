# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:13:44 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 54443
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45219' '-nowindow' '-style' 'windows' '-data' 'AAABLnicbY69CsJAEIS/KAax8CmsBANim9o2imAbgkajaC7ERMFGH9U3OcfDCAF3uf2ZmT3GA8KHtRYX3buKT8Rc+Qvv9R1Cj3Z89k4bWT5bHXrNcSPx9YZMyDHE7Kk5CBkLSTgpDTfhtfiLaqE0lFSkbIVHrKTuS70Tc9U8ktcFa3GpVJl6qZ9yqQ1nAmEb/QoD3RTiDEdtwV917BwkmhJm2qbykImpnPM3vA4nKQ==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_random/eth_random_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_random/eth_random_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_eth_random.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_random.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

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
