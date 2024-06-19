# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-09 18:08:32 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 8987
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33419' '-nowindow' '-style' 'windows' '-data' 'AAABInicbY7PDsFAEMZ/SzTi4CHEScIT9MKBYysSV0ERQrdRJXHhUb3J+lZU0sRMdnbm+7M7Bggfzjk+Ub+rBESMlb8wr28TGqrh51oVmT4rNzRKcykJdNr0SbEs2FGwF9ITsuSotNyEF+Jz1UxpOXNhQyI8YiZ1U+qtmKv6jnaNmYuLxU0YyZUzlGfFQL613oSWHJkwy0FT94/W72KlTThpo1T/+XgDpiQj9A==' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_common_files/PSGBusArb/PSGBusArb_goldmine/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_common_files/PSGBusArb/PSGBusArb_goldmine/.tmp/.initCmds.tcl' 'FPV_PSGBusArb.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGBusArb.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva

# Elaborate design and properties
elaborate -top PSGBusArb

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
