# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:13:59 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 34936
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38265' '-nowindow' '-style' 'windows' '-data' 'AAABMnicdY67CsJAFETPKgax8DMsBEWtU9tGEWxDiO/Xhpgo2Oin+ifrJBghhfey9zF3ZhkD+E/nHGU0HyoeAVPlL8z7O/iGehR7o47MX7UOrUpcUTy9LgMuWEK25OyF9IVEnJSWu/Bc96tqorSkZKxZCQ9YiN0We6PLTXNPXmcsdYuIOarHUhT6QpMyVI/1L3SkSoRYDtpGf/hh6SLirDfRNpaPnRhZ6f4DZKMoBg==' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/ack_counter/ack_counter_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/ack_counter/ack_counter_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_ack_counter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ack_counter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top ack_counter

# Set up Clocks and Resets
clock clock
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
