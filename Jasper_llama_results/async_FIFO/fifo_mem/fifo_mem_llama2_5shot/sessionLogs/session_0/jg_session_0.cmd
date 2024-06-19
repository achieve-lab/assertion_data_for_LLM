# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:11:03 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 26041
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37789' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY5PD8FAEMV/JRpx8BmcJRwkbj27lkhcmw2KRm1DS+LCR/VN6tmoZM1kZ2fee/MnAKJHXdc4a98VQmJm8p8Fr28SBfj2qVs+snh6P3Sa5kYS6vUZccKSsKPiIGQoxHCUW27CK/EXxUJuOVOyZSM8Zil1V+pUzFX5QLfOWYlLNSl1U3Opc8bqWmsi9KQvNMWSuV3/ysRtNsoME1VT7d6LL93Fb26nJWY=' '-proj' '/home/vpulav2/Work/Jasper_llama/async_FIFO/fifo_mem/fifo_mem_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/async_FIFO/fifo_mem/fifo_mem_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_fifo_mem.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fifo_mem.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top fifo_mem

# Set up Clocks and Resets
clock -infer
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
