# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 10:40:56 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 39575
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45921' '-nowindow' '-style' 'windows' '-data' 'AAABOnicfY9PD8FAEMV/JRpx8EEkHIRbz72WSFyb+lMlZRtawoWP6pvU60YlvZjJzM6892Z31gG8Z1mWWGs/lFwCfPnPnPe38ByaVvWtJjJ/NU7o1MO1xFX0GXLCELKjYC9kICQilRtuwgvxF+VMbjiTs2UjPGAhdVfqWMzVTvrMWIqLSaQLWalKuauq3qj+MhK+FgY9TWa6z3BQN/kzE9ptIo6Ksbqp9knE5fYXH5/+KSI=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/fht_bfly_noFF/fht_bfly_noFF_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/fht_bfly_noFF/fht_bfly_noFF_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_fht_bfly_noFF.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_bfly_noFF.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top fht_bfly_noFF

# Set up Clocks and Resets
clock clk
reset rstn

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report

exit
