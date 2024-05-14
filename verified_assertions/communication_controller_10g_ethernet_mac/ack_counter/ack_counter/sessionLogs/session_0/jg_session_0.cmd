# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-13 12:52:32 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 105130
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35907' '-nowindow' '-style' 'windows' '-data' 'AAABGHicdY69CsJAEIS/UwxiYekjWAj6BKltowi2Es4f1OCFaBRs9FF9k3NOjHCFs9z+zM4sZ4D04b3ng/ZdKSFjqvjBvL5NaogR5lbMzJ9RhU5jbiSJXp8xJxwrdtTsxYzE5BQKx018rf1ZuVQ4Ki5sWIvPWEjdlXqrzVX9UH+dsdQux3JUtXIEf/BUTFSt7kJPrlKM46Bp8Ecf8AZ4lSMG' '-proj' '/data/vpulav2/Work/Jasper/ack_counter/ack_counter/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/ack_counter/ack_counter/.tmp/.initCmds.tcl' 'FPV_ack_counter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ack_counter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top ack_counter

# Set up Clocks and Resets
clock clock
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
