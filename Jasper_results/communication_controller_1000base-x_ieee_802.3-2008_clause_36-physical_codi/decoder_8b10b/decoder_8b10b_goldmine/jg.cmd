# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-01 19:49:03 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 141148
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45849' '-nowindow' '-style' 'windows' '-data' 'AAABMnicfY7NDsFAFIW/IRqx8CCCsLPoutsSia3QIhU6TSmJDY/qTepMo5JunJu5d+75mYwB/GdZllRoP9Q8QgLVD+b9vfiGJtzeajKLV2NCpw7XFk+nz4gUy5oDBYmYgZgNJ5XlLr6QflHPVJacKzti8SFLubty76XcqmTAnJW0WJ5Ibjdz7TO2TJmoj5WP9Db0lMykWo7ahn8y7m9WmZizfphKd/gAHHUm1g==' '-proj' '/home/vpulav2/Work/Jasper/decoder_8b10b/decoder_8b10b_goldmine/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/decoder_8b10b/decoder_8b10b_goldmine/.tmp/.initCmds.tcl' 'FPV_decoder_8b10b.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/decoder_8b10b.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva

# Elaborate design and properties
elaborate -top decoder_8b10b

# Set up Clocks and Resets
clock RBYTECLK
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
