# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 13:16:47 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 585308
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33735' '-nowindow' '-style' 'windows' '-data' 'AAABOHicdY9NC4JAEIbfLZLo0O+IoCCqm+euFkFXib40xBXThC71U/sn9igZeGiGnZl9P5ZZI8l9lmWpOroPiiNPK/IX5v0dXKN2VPdOG9m8Wl3qNeZG4nCGmiiWla+LcoUgY5C9ItKqAM/hb9SEtEqV6aQjuKct6j7qM8ydecSua+3gCpAMra+At2L0Ea5UU9ADszTAl4BYXbkt/jqqvSrG1xz3kj5jmwBfVv/hA21WKQs=' '-proj' '/data/vpulav2/Work/Jasper_corrected/async_FIFO/wptr_handler/wptr_handler_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/async_FIFO/wptr_handler/wptr_handler_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_wptr_handler.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/wptr_handler.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva

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
