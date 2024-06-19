# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 16:10:21 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 77640
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34607' '-nowindow' '-style' 'windows' '-data' 'AAABQnichY+9CsJAEITnFINY+CCCKQTBIrVtFME2HPEninrBJAo2+qi+SfwSjJDKXW5/ZmeWPSMpeJZlqdq6D4KnUHP8Z+b9LQKjtlV9p40sX60s9RpxQ/F4Q411kVOkvQodQEYgVifc6Q5eMM+IKe50Va6tNuChVrD7sHdMbtQ+ty60ZpYqYUcGM0ZzprcoLdpqg0+O2S8NUKcgTke62R9dVF9lwa0mdFOYCZO8/s0HOGArkA==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/phasecomparator/phasecomparator_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/phasecomparator/phasecomparator_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_phasecomparator.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/phasecomparator.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

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
