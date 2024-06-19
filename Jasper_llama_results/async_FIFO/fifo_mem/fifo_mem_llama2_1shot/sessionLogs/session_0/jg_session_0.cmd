# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:10:59 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 25864
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:32949' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY5PD8FAEMV/JRpx8BmcJSSce3Ytkbg2GxSN2oaWxIWP6pvUs1HJmsnOzrz35k8ARI+6rnHWviuExMzkPwte3yQK8O1Tt3xk8fR+6DTNjSTU6zPihCVhR8VByFCI4Si33IRX4i+KhdxypmTLRnjMUuqu1KmYq/KBbp2zEpdqUuqm5lLnjNW11kToSV9oiiVzu/6VidtslBmmqibavRdfuovfbm8lYg==' '-proj' '/home/vpulav2/Work/Jasper_llama/async_FIFO/fifo_mem/fifo_mem_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/async_FIFO/fifo_mem/fifo_mem_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_fifo_mem.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fifo_mem.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

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
