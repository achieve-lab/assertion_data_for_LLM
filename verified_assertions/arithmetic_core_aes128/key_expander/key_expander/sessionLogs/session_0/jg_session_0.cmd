# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-13 13:39:10 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 114661
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35453' '-nowindow' '-style' 'windows' '-data' 'AAABHHicdY5LCsJAEETfKAZx4dojiKAnyNptDIJbCSaKH5wQE38bPao3GStihFlYzfSnqqsZA4QP5xwftO9KARFTxQ/m9W1Cg496bvlM/PQqdBpzsxLo9RlzxLJkQ8VWzEhMwkFhuYivpJ+Uc4WloCQjFR8x13ZX22spZ/VD/XXGQtpeOzfVjKu0RBdS9QUTuVe6DD35cjGWnabBX0eNNxRQI+w=' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_aes128/key_expander/key_expander/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_aes128/key_expander/key_expander/.tmp/.initCmds.tcl' 'FPV_key_expander.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/key_expander.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top key_expander

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
