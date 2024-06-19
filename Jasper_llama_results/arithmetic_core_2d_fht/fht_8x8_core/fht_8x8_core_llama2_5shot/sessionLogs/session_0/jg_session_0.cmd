# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 21:14:11 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 80313
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38769' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY/PCoJAEMZ/Fkl06DkiqIMQdPDc1SLouohpFpVSWtGlHrU3sa8lAw/NMLM7359l1gH8R1VV2Gjf1VwCZspfOK/vxXdoxmduNZHFs3FCpzbXElfVZ8SRDMOGkq2QoZCQvTLjKrwUf1bPlRknCmLWwgOWUnelTsRcdB9o1zkrcQmpdIYpN5Uhss6YsdBIL0NPvlxYxk6T99dh7CYhB5WnaaJdUnGF/cEb3J8oFA==' '-proj' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/fht_8x8_core/fht_8x8_core_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/fht_8x8_core/fht_8x8_core_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_fht_8x8_core.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_8x8_core.v \
  ${RTL_PATH}/mtx_trps_8x8_dpsram.v \
  ${RTL_PATH}/fht_1d_x8.v \
  ${RTL_PATH}/fht_bfly_noFF.v \
  ${RTL_PATH}/fht_bfly.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva


# Elaborate design and properties
elaborate -top fht_8x8_core

# Set up Clocks and Resets
clock sclk
reset rstn

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report

exit
