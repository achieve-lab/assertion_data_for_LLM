# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 10:38:28 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 37707
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43869' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY7NDsFQEIW/Eo1YeAZrCQuJXde2JRLbpn6qpNyGlrDhUb1JHTcquWYyc8+cOXNnPCB4VFWFteZdySdkIv+Z9/qCwMO1T91wmdnTeaFVD9cSX9FlwBFDxJaSnZi+mJhMbriKL9U/K+dyw4mCDWvxIXOp21In6lyEe7p1ykK9hFS6iKVQxo2hqpUQdKTP9Ythb3f9KyO7OeagGKkaa3cqdWEvfgNzpyV+' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/fht_bfly/fht_bfly_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/fht_bfly/fht_bfly_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_fht_bfly.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_bfly.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top fht_bfly

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
