# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-24 11:42:04 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 58462
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39545' '-nowindow' '-style' 'windows' '-data' 'AAABLnicdY7BCsIwEESnikU8+B0i6Bf07LWK4FXERq3YpthWwYt+qn8SX4oVenCW7G5mdrIJJEVP55wa9B+kULEWxA/B+9tEgbrw916XWb06VRq05nYk5Iw1Uy6rrY6qlcJMYXa6EFZ3+Bq9JBeE1VWVjBL4WGumh0wfUG70E/661AbNMHWiluQUvcJn2DCn2/OyNMJXwFqdm53/HP5fFkeiDD6H8/gAz/Anpg==' '-proj' '/data/vpulav2/Work/Jasper/eth_shiftreg/eth_shiftreg_goldmine/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/eth_shiftreg/eth_shiftreg_goldmine/.tmp/.initCmds.tcl' 'FPV_eth_shiftreg.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_shiftreg.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva
exit
