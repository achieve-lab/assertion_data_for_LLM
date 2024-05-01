# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-26 13:56:26 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 67919
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39733' '-nowindow' '-style' 'windows' '-data' 'AAABKHichY69CsJAEITnFINY+Ag+gKCNbWrbKIKtiJ6/0QuaKNjoo/om55dghKuc5WZ3Z2eXM5Lip/deFZoPKFKiMfGDeX+L2ChE2TdCZfoKstSql2tLxOtqoLOcFtqq0B6lj7JUSjjd0QvmVzgjnC7KZbVGTzTD3ca9YXKjHvLXiebMLK4dOdUIXlFb+FjdOeHL6VI2Omxn3HQ60PX+7JX4AMyPJdw=' '-proj' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_l3_checksum/eth_l3_checksum/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_l3_checksum/eth_l3_checksum/.tmp/.initCmds.tcl' 'FPV_eth_l3_checksum.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_l3_checksum.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
exit
