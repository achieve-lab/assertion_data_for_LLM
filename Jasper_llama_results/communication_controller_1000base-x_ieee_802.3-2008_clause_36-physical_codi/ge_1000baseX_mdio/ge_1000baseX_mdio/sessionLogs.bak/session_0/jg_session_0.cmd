# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-02 13:18:04 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 160869
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34275' '-nowindow' '-style' 'windows' '-data' 'AAABMHicjY5PD8FAEMV/SzTi4EM4SgjOPbuWSMRN/CmpYBtVEhc+qm+yXjcq6c172dmZNzNv1wDh0zmHR/2hEBAxFn8w728SGqoo6lpVmb4qNzTK5XIk0GnT44xlyZ6cREpXyoqjaLlLz9XPFFPRcuFKzFZ6xEzTTU3v1LkpH+mvE+beK1YcMvBcyy+TspB20m4in758NnoDWnJI5Ws5qOr8sVvgA7K6JdA=' '-proj' '/home/vpulav2/Work/Jasper/ge_1000baseX_mdio/ge_1000baseX_mdio/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/ge_1000baseX_mdio/ge_1000baseX_mdio/.tmp/.initCmds.tcl' 'FPV_ge_1000baseX_mdio.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ge_1000baseX_mdio.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top ge_1000baseX_mdio
exit
