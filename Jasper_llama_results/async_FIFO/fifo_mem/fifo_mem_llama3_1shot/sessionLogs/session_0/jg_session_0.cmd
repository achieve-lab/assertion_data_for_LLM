# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:11:07 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 26226
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43161' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY5PD8FAEMV/JRpx8BmcJSTi2rNricS12aBo1Da0JC58VN+kno1K1kx2dua9N38CIHrUdY2z9l0hJGYm/1nw+iZRgG+fuuUji6f3Q6dpbiShXp8RJywJOyoOQoZCDEe55Sa8En9RLOSWMyVbNsJjllJ3pU7FXJUPdOuclbhUk1I3NZc6Z6yutSZCT/pCUyyZ2/WvTNxmo8wwVTXR7r340l38Bm6BJWM=' '-proj' '/home/vpulav2/Work/Jasper_llama/async_FIFO/fifo_mem/fifo_mem_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/async_FIFO/fifo_mem/fifo_mem_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_fifo_mem.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fifo_mem.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

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
