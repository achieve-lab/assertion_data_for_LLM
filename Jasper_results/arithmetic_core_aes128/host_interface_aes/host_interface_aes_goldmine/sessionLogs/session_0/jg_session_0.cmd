# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-13 22:03:40 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 187710
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40423' '-nowindow' '-style' 'windows' '-data' 'AAABPnicfY9NC4JAEIbfLZLo0A+J6tjJc1eLoKuI2hflimZBl/qp/RN7XDLw0gy7O/N+DLNGkv+s61ou+g8uT4GW5C/M+1v4Rt1o+l4XWb86rzRoza3E44w1UyarUHtVOoJMQCKdSas7eAVfcuekVaGrUiXggTaoh6h3MDfqKbuutIU7oCxRhkzMnKNAFSmmmtPHTJdGeHMYqxPd4q8r5E1hmz0t7kQXp0rdTz6CBSry' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_aes128/host_interface_aes/host_interface_aes_goldmine/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_aes128/host_interface_aes/host_interface_aes_goldmine/.tmp/.initCmds.tcl' 'FPV_host_interface.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/host_interface.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva


# Elaborate design and properties
elaborate -top host_interface_aes

# Set up Clocks and Resets
clock -infer
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
