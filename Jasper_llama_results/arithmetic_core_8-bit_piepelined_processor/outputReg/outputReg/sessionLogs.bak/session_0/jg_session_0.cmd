# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-19 19:57:22 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 275050
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35933' '-nowindow' '-style' 'windows' '-data' 'AAABEHicbY5LCsJAEETfKAZx4cIjuBT0BFm7jR9wK+InKGIHTRTc6FG9yVgjRhiwmulPVXUzDkgf3ns+aN6VEjLGih/c69ukjhhhbsTM9BlVaNXLtSXR6zLkhLEkp2IvZiBmxVFh3MRX0i/KhcI4U7JlIz5jLndb7p2Uq/q+/jphIc3kL8WGPJM/Z6RurZvQ0UahO8ZBU++PN+ANYEIhgA==' '-proj' '/data/vpulav2/Work/Jasper/outputReg/outputReg/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/outputReg/outputReg/.tmp/.initCmds.tcl' 'FPV_outputReg.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/outputReg.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top outputReg

# Set up Clocks and Resets
clock DEFAULT_CLOCK
exit
