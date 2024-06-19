# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-07 19:38:18 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 8376
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35997' '-nowindow' '-style' 'windows' '-data' 'AAABLHichY7dCgFRFIW/IZILz+BakQdwp7g0Um4lxl/MCEO54VG9yfgINVfW6uyzz1p7r04AdG5ZlvFG8WopM6Anfwgen6YTkMfrXcgrw3vuhtJ3+TtS9tRoEpMwYUnKWqWhMmUrEy7qqf7RupcJB05EzNUHjJyuOL3QOdu3/WvIWC/U69NlZVIsI9NGZuxkZEbLlJkaVN3fqyRsfNX/br7wBE74JjY=' '-proj' '/data/vpulav2/Work/Jasper/PSGChannelSummer/PSGChannelSummer/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/PSGChannelSummer/PSGChannelSummer/.tmp/.initCmds.tcl' 'FPV_PSGChannelSummer.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGChannelSummer.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top PSGChannelSummer

# Set up Clocks and Resets
clock clk_i
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
