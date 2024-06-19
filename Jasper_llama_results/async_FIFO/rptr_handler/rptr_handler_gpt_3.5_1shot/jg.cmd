# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 12:51:46 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 577613
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42417' '-nowindow' '-style' 'windows' '-data' 'AAABOHicdY+7CsJAEEXvKgax8DtEUBC1S20bRbAN4itKyIaYKNjop/on8WwwQgpn2JnZ+1hmjST/WZalqmg/KJ4CLchfmPd38I2a4e6tJrJ6NbrUqc21xOP0NVIiq1AnFTqDDEG2ikmrO3gBf6WmpFWmXAftwQOtUXdRH2FuzAN2XWoDl4Hk1FARbyXoY1yZxqA7ZqmHLwWxunCb/XW4vRwTaop7Tp+wTYQvr/7wAWosKQE=' '-proj' '/data/vpulav2/Work/Jasper_corrected/async_FIFO/rptr_handler/rptr_handler_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/async_FIFO/rptr_handler/rptr_handler_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_rptr_handler.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rptr_handler.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva

# Elaborate design and properties
elaborate -top rptr_handler

# Set up Clocks and Resets
clock rclk
reset rrst_n

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
