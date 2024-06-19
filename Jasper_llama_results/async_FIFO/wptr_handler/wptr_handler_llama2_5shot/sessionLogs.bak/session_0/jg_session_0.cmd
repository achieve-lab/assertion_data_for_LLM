# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:20:17 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 28875
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46389' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY/NCoJQEIWPRRIteo4IaiG0c93WImh7kf5MzCumCW3qUXsT+5IMXDTDvXfmm3NkdCT5j7qu1UT/zuUq0JL8hfP6Fr6jbnz6Xpesn51XGrTmVuJyxpoplZXRSaXOkCkkVEJaVfCS+ZU7I61yFTpoDw+0QT1EfWRyo56w60pbZhWkQGsU8a0UfYIr1xy6o5ZG+DKIVUzn/XWYZpNQF45Ht2CXCFfR/MEbH8QpBg==' '-proj' '/home/vpulav2/Work/Jasper_llama/async_FIFO/wptr_handler/wptr_handler_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/async_FIFO/wptr_handler/wptr_handler_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_wptr_handler.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/wptr_handler.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

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
