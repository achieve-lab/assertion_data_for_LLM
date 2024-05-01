# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-28 16:50:15 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 132773
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45997' '-nowindow' '-style' 'windows' '-data' 'AAABMHicjY6xCsJAEETnFINY+BGWghbWqdNGEWwlRA2K5MLFKNrop/on8SUY4Tpnud29mdm9M5LCZ13XatF/kALFiogfzPvbhEY+mnvPZ1Yvr0qDbrizBJyxZspltVWmSkeYKUyiM2F1g6/QS3JBWDldtNcOPtYa9xD3AeVKv+CvS23QUjbkVIc3Y2vZTjmYhP6ONodJeUMasaFAszpxm/wx2+ADNJ0oIg==' '-proj' '/home/vpulav2/Work/Jasper/can_register_asyn/can_register_asyn/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/can_register_asyn/can_register_asyn/.tmp/.initCmds.tcl' 'FPV_can_register_asyn.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_register_asyn.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top can_register_asyn

# Set up Clocks and Resets
clock clk
reset rst

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
