# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-24 14:34:06 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 100398
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37723' '-nowindow' '-style' 'windows' '-data' 'AAABEHicbY5JCsJQEERfFIO4cOERXAp6gqzdOYNbkTigiAmO4EaP6k3iU4wQsJrfQ1V18wMgumdZxgflmylkQNf4IXh+myigiPdcKjKjR6FCJV/OLaGvTps9CTPWnNnItGTm7IyEq/xZ/WhOjYQDJ5Ys5AdMdFd1r1Qu9k3/OmSqNqan3reL9R+81bHGVqi5kcolbJ0af7xvvAA1ciCC' '-proj' '/data/vpulav2/Work/Jasper/RMON_ctrl/RMON_ctrl/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/RMON_ctrl/RMON_ctrl/.tmp/.initCmds.tcl' 'FPV_RMON_ctrl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/RMON_ctrl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top RMON_CTRL

# Set up Clocks and Resets
clock Clk
reset Reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
