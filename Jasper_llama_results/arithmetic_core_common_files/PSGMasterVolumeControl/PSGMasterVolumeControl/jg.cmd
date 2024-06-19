# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-08 18:27:26 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 6748
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42515' '-nowindow' '-style' 'windows' '-data' 'AAABRHiclYxLCsJAEERfFIO48CCiniA7Ia4kEcGtiD8UzYSJUXCjR/UmsTIYYZZ2M/151VMBED2rqsJF+6ESkhArfxG8v0MU4Ee9t3wyf3kdOs3n5iTU6zMiw7DiQMlRZCCy5qw03MVL6YVqrjRYruzYiicsdN3V9V7KzRnHpCylpdKmzORTuHsrauRYctE20ZyJW8fGmjbq0JNX7uhJ2/Avlzo+ag4rdA==' '-proj' '/data/vpulav2/Work/Jasper/PSGMasterVolumeControl/PSGMasterVolumeControl/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/PSGMasterVolumeControl/PSGMasterVolumeControl/.tmp/.initCmds.tcl' 'FPV_PSGMasterVolumeControl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGMasterVolumeControl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top PSGMasterVolumeControl

# Set up Clocks and Resets
clock clk_i
reset rst_i

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
