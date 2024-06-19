# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-09 16:56:56 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 5399
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35069' '-nowindow' '-style' 'windows' '-data' 'AAABIHicfYxLCsIwFEVPFIs4cAEuQdAVdNxpFcFpKFZF0aaoVXCiS3Un8abYQifeR97nfmKA+OW9p0b/qRaRkqhamM9viQ1dhLvXZZbvzoRBE24skd6YGQUOy56Kg5ipmIyTyvEQX0m/qpcqx4UbW3LxKSu5h3LvpNzrZMKCtbRc/vCHbTNWPePMXPtGCoyULMU6jromfzIBX63sJMQ=' '-proj' '/data/vpulav2/Work/Jasper/dual_port_ram/dual_port_ram/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/dual_port_ram/dual_port_ram/.tmp/.initCmds.tcl' 'FPV_dual_port_ram.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/dual_port_ram.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -bbox_m dual_port_ram

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
