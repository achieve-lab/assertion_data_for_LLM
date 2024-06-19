# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 19:38:03 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 144066
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40215' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY7NCoJQEIW/WyTRoodoGRVEW9e11AjaivSnUV0xLWhTj9qb2FEyEJphfs6ZM3euAdxnURRU1n4oOXjM5T8z72/jGppW4laTWb4aFTr1ci1xFH3GXLAEHMiJxQzFhJzklrv4XPOrciK3pGTs2Ir3WEndlXqvyU39QH/1WWvma7YQivVKqU+ZqG6EoKeNRIzlKDT6ow2q6yFnxUxoqvuR9Fn16w/fkyWD' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGFilter/PSGFilter_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGFilter/PSGFilter_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_PSGFilter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGFilter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top PSGFilter

# Set up Clocks and Resets
clock clk
reset rst

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
