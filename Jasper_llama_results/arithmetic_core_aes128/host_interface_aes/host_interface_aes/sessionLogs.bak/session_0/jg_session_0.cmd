# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-13 20:28:45 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 161868
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46607' '-nowindow' '-style' 'windows' '-data' 'AAABLHicfY5LCsJAEERrFIO48BSuRD1B1m6jCG6HEOMPyYTEKLjRo3qT8SUYIRurmf5UVTdjJIVP770a9B+kQJGWxA/m/W1Coy7quddl1q9OlQbtcmsJeGPNlcnJ6qBKJ5gpTKwL4XSHr9BLck44Fboq1Q4+0gb3EPce5UY/468rbdGOOEuclotZs1HgipXQLZgTrksjdnMUpzPT5O+WpaaoNT6I3Ccy' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_aes128/host_interface_aes/host_interface_aes/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_aes128/host_interface_aes/host_interface_aes/.tmp/.initCmds.tcl' 'FPV_host_interface.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/host_interface.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top host_interface_aes
exit
