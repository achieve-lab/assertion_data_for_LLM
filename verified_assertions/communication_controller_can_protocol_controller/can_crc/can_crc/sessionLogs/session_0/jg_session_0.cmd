# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-28 19:07:32 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 163634
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46089' '-nowindow' '-style' 'windows' '-data' 'AAABCHicVY5LCsJAEETfGAziwiN4AEFPkLXbKEK2IvGDIpmQGIVs4lG9yVgZjDDV9Geqq7vHAEnnnMMjahViUtayP8znVySGEP17FDLbd5BhPAwPklg+Y0mBZc+FhquYhZgDd5nlJb5Rv1YsZZaKByeO4lN2Uk+kPqvzVD3XXzdk6uXaUPhcyVeaybUPplKX4iw3fzvU9fgCOwMfbA==' '-proj' '/home/vpulav2/Work/Jasper/can_crc/can_crc/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/can_crc/can_crc/.tmp/.initCmds.tcl' 'FPV_can_crc.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_crc.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top can_crc

# Set up Clocks and Resets
clock clk
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
