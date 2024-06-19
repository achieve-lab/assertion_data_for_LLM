# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-22 14:54:03 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 395415
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40775' '-nowindow' '-style' 'windows' '-data' 'AAABKHichY5JCsJQEERfFEVceAQPIJgTZO02iuBWgrOoCcYB3OhRvUl8ERWysprfQ3VV8wMguhdFwRv1m6lJzMD4IXh+miiginKuVZnRo1Kh8TV/JU1fhz4HUqasOLOR6ckk7IyUq/zZfW7OjJQjJxbM5WPGqluql24u9qF/HTJxl7H2Rq5ypmfvnOhM9JYXQuvM+9DWncmkbJ26f3wlXu+fJow=' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/phasecomparator/phasecomparator/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/phasecomparator/phasecomparator/.tmp/.initCmds.tcl' 'FPV_phasecomparator.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/phasecomparator.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top phasecomparator

# Set up Clocks and Resets
clock MainClock
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
