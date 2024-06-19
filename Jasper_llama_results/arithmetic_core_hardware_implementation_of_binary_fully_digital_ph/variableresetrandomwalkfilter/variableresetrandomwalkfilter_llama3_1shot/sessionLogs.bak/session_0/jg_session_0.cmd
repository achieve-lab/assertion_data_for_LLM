# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:41:00 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 54618
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42945' '-nowindow' '-style' 'windows' '-data' 'AAABeHicnZDNCoJQEIWPRRItepCgINq2jnYWRVu5lZX9eMW0oE09am9in5KB22Zwfs6cOfd6HUnjZ57nKq35ILjyNMF/5ry/xdhR3Yq+UUfmr1qWWtVyRXH5uuorkpWvvTKFID0QozNudQfPmF+JMW6VKFWgLbinBew27B2TG/WUu860YmbghcQ1KgF1gELAZgIWsW11Qbs45cR2SE5L3oC8oZM66MYgVke6Jfr/avrlvximRiO6IXsH2Gn5Bh8t3Tb5' '-proj' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/variableresetrandomwalkfilter/variableresetrandomwalkfilter_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/variableresetrandomwalkfilter/variableresetrandomwalkfilter_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_ariableresetrandomwalkfilter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/variableresetrandomwalkfilter.v \
  ${RTL_PATH}/randomwalkfilter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top variableresetrandomwalkfilter

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
