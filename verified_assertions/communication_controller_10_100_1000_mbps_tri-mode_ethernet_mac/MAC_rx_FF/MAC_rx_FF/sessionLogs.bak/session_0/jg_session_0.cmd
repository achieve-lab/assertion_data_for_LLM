# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-25 11:25:10 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 149720
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45553' '-nowindow' '-style' 'windows' '-data' 'AAABEHicbY9NCsIwFIS/KBZx4cIjuBT0BN1IwZ1UEdyK+IciTalWxY0e1ZvEiVgh4DzyfmbmhcQA8cM5xwf1u1JEykjxg3l9m9gQws+1kJk+gwqNarmyRDpt+mRYFuwo2YvpiVlyVFiu4kvpJ+VcYSk4s2EtPmUmd1PurZSL+q7eOmEubcyQRLXgpuz/MNDeSndCSxu5FMtBU+eP1+MNJCIf7A==' '-proj' '/data/vpulav2/Work/Jasper/MAC_rx_FF/MAC_rx_FF/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/MAC_rx_FF/MAC_rx_FF/.tmp/.initCmds.tcl' 'FPV_MAC_rx_FF.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/MAC_rx_FF.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -bbox_m  
exit
