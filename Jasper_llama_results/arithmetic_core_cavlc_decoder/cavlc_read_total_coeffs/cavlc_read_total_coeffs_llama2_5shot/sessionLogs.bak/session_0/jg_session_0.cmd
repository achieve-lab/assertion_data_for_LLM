# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:41:57 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 73644
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45647' '-nowindow' '-style' 'windows' '-data' 'AAABYniclY67CsJAEEVvFINY+CGCFoJdsBS7KIJtCNH4QN2Ql2Cjn+qfxJPFCCmdYXdnzty5rCPJe1ZVJRvdB5crXwvyF877W3iO2lH3nTZZv1qv1GuWG4nLGWqsm4wCHVToBBlBQl1Iozu8YJ5xJ6RRqlx77eC+Nqj7qGMmJfWcv660ZRbhUOIQUafoQ7uRs59b71ph4DGZaQKNoNIAt4QNozPd8k+fwP461JUzpZvBjlZbxwdCxjHW' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_read_total_coeffs/cavlc_read_total_coeffs_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_read_total_coeffs/cavlc_read_total_coeffs_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_cavlc_read_total_coeffs.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_read_total_coeffs.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top cavlc_read_total_coeffs

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
