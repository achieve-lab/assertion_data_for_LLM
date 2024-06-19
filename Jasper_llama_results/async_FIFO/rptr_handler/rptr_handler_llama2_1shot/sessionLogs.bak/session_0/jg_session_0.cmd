# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:33:40 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 29988
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36129' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY/LCsJADEVvFYu48DtEULDrrt1WEdyW4qtK7ZRxquBGP9U/qcdihS5MmExykjtkPEnho6oq1da9E3xFmuM/817fJPTUtk/daZPls3VLvUbcjPicoSbKZRTroFJHyBiSKMONbvCS/oVY4EZWTjtt4ZFWTPeZ3tO5ko/YdaE1PQtxxFgpb+XMZ6isptANuTRAV0CMTlTBX0Vcb5LozAmoZuySonL1D94cdij4' '-proj' '/home/vpulav2/Work/Jasper_llama/async_FIFO/rptr_handler/rptr_handler_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/async_FIFO/rptr_handler/rptr_handler_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_rptr_handler.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rptr_handler.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

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
