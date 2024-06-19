# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 13:16:52 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 585432
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35913' '-nowindow' '-style' 'windows' '-data' 'AAABOHicdY9NC4JAEIZfiyQ69DsiqEt589zVIui6RF8a4oppQpf6qf0Te5QMPDTDzsy+H8usI8l/VlWlJvoPiqtAK/IXzvs7+I66Ud97XWTz6nRp0JpbicsZa6ZEVkYXFYpApiB7xaRVCV7A36gpaZUp10lH8EBb1EPUZ5g784Rd19rBlSA5WqOQtxL0Ma5Mc9ADszTCl4JYXbkt/zrqvWrGaIHbo3tsE+LLmz98AG2OKQ8=' '-proj' '/data/vpulav2/Work/Jasper_corrected/async_FIFO/wptr_handler/wptr_handler_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/async_FIFO/wptr_handler/wptr_handler_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_wptr_handler.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/wptr_handler.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

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
