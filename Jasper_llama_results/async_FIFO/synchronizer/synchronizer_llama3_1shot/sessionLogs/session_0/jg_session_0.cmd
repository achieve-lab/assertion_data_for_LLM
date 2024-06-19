# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:15:56 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 28046
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38781' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY+7CsJAEEVPFINY+B0iKKhtatsogm0I8RVRN+ShmEY/1T+J18UIKZxhZ2fuY5l1AO9RVRU22qWKi89c+Qvn9W08h2Z85lYTWT4bN3Rqcy1xdfqMuGAI2FMQCxkKCTkpDTfhhfhMNVEaUnK2bIT7rKTuSr0Tc1U/0K4L1uIy7nJFHKQ36mJKuVLGckd6GXryJZY9apr+dQR2k5CzzkzTRMqDFLn9wRsxVilL' '-proj' '/home/vpulav2/Work/Jasper_llama/async_FIFO/synchronizer/synchronizer_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/async_FIFO/synchronizer/synchronizer_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_synchronizer.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/synchronizer.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top synchronizer

# Set up Clocks and Resets
clock clk
reset rst_n

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
