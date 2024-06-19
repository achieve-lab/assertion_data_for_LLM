# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 10:31:36 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 35855
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44341' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY69CsJAEIS/Uwxi4UNYigpiY5HaNopgG4Iaf1AvGKNio4/qm8TJYYSAs9ze7szs3hnAf+Z5jkP9oeQRMFH8YN7fwjdUUfS1KjN7VW5olMOlxdNp0+eEJWRDxk5MV0zEQWG5ic+kp8qJwnLmwpqV+IC53E25YylX1R39dcpCWsxWvpChc94ZM1C/1E5oaSLRHsteXe+PN3SvRxx1Rk5J5bFyFfgA4eslbQ==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/fht_1d_x8/fht_1d_x8_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/fht_1d_x8/fht_1d_x8_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_fht_1d_x8.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_1d_x8.v \
  ${RTL_PATH}/fht_bfly_noFF.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

  

# Elaborate design and properties
elaborate -top fht_1d_x8

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
