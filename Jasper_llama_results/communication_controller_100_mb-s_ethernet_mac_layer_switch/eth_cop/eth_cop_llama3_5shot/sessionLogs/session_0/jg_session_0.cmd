# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:09:44 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 46198
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46847' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7NDsFQEIVPiUYsPIK1SNiIXde2JRLbpqnSCu4NLYkNj+pN6tOo5JrJ/J058+NJCh5VVamW9h3nK9Qc/Yn3+iaBJ1c+dctFlk8nSp1muKH4WF9jnWQUaadSOcgIJNYBNbqBl/QveIsanVUo1QY81Ap2F/aWzpV8wK8LremlsDJiwoTVhCphn9SDbdlhtKca/vGi+mqsIzalmnE3o1PU374B1EAkow==' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_cop/eth_cop_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_cop/eth_cop_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_eth_cop.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_cop.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva

# Elaborate design and properties
elaborate -top eth_cop

# Set up Clocks and Resets
clock wb_clk_i
reset wb_rst_i

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
