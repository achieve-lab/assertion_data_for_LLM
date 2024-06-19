# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 13:13:33 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 39945
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:32873' '-nowindow' '-style' 'windows' '-data' 'AAABLnicbY69CsJAEIQnikEsfAorwYDYpraNP2AbgkaNqBc0UbDRR/VN4nfBCAfucru3s7PDeJLCZ1VVqqP9oPiKNCV/4b2/n9CTG3Zuucj85XSp0xw3FJ/X10hnGcXaqVQGMgRJdCSN7uAl+ys1J40uKpRqAx5pCbsLe8vmxn+A15lW7BYonGAZbq1ySg+4XKMq9bjJUTI6MAV/2XHtwOKJJkxjPOxhFLXzD6cUJts=' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/Ramdon_gen/Ramdon_gen_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/Ramdon_gen/Ramdon_gen_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_Ramdon_gen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/Ramdon_gen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top Ramdon_gen

# Set up Clocks and Resets
clock Clk
reset Reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
