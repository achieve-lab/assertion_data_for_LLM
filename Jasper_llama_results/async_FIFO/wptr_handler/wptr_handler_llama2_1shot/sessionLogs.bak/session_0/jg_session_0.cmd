# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:20:12 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 28789
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46109' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY/NCoJQEIWPRRIteo4ICnLtuq1F0PYi/ZmYV0wT2tSj9ib2JRm4aIZ778w358joSPIfdV2rif6dy1WgJfkL5/UtfEfd+PS9Llk/O680aM2txOWMNVMqK6OTSp0hU0iohLSq4CXzK3dGWuUqdNAeHmiDeoj6yORGPWHXlbbMKkiB1ijiWyn6BFeuOXRHLY3wZRCrmM776zDNJqEuHI9uwS4RrqL5gzcfjCkC' '-proj' '/home/vpulav2/Work/Jasper_llama/async_FIFO/wptr_handler/wptr_handler_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/async_FIFO/wptr_handler/wptr_handler_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_wptr_handler.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/wptr_handler.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top wptr_handler

# Set up Clocks and Resets
clock wclk
reset wrst_n

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
