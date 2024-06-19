# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-01 20:06:52 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 142709
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36059' '-nowindow' '-style' 'windows' '-data' 'AAABMnicfY7NDsFAFIW/Eo1YeBBB2Fl03W2JxFbolBA6TSmJDY/qTcZpo5JunJu5c+/5mYwHBE/nHBXaDzWfiFD1g/f+DoFHE+XeajKLV+OGTh2uLb5OnxEpljV7Cg5iBmI2nFSWu/hC+kU9U1lyriQY8RFLubty76TcqmTInJW0RJlYbqMp1z5jy5SJ+lj5WG9DT8lMquWobfgnU/7NKmM464ep9BIfIhkm6g==' '-proj' '/home/vpulav2/Work/Jasper/encoder_8b10b/encoder_8b10b_goldmine/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/encoder_8b10b/encoder_8b10b_goldmine/.tmp/.initCmds.tcl' 'FPV_encoder_8b10b.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/encoder_8b10b.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva

# Elaborate design and properties
elaborate -top encoder_8b10b

# Set up Clocks and Resets
clock SBYTECLK
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
