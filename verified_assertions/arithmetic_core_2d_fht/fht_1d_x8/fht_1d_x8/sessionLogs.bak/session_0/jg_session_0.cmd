# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-18 14:53:09 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 215405
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40305' '-nowindow' '-style' 'windows' '-data' 'AAABEHicbY69CsJAEIS/UwySwsJHsBQU7CxS20YRbIOo8QfJBTUqNvqovsk5CUY4cJbbn5nZ5QwQPZ1zVGg+lAJiJoofzPvbRAYf5dzwmdnLq9Cql2tLoNdhQIYlYUvBXkxfzJKjwnITX0g/K+cKy4kLG9biY+Zyt+VOpVzV9/TXKQtpKTv5EkaV886YoeaVbkKojVx3LAdN3T/eEh855iBs' '-proj' '/data/vpulav2/Work/Jasper/fht_1d_x8/fht_1d_x8/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/fht_1d_x8/fht_1d_x8/.tmp/.initCmds.tcl' 'FPV_fht_1d_x8.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_1d_x8.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top fht_1d_x8
e
exit
