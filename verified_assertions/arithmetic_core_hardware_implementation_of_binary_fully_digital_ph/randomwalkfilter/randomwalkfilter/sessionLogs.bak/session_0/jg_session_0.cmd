# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-22 15:01:10 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 397025
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42475' '-nowindow' '-style' 'windows' '-data' 'AAABLHichY5LCgIxEERfFAdx4RlcC4oHmLXbUQS3Iv4YP5MhOgpu9KjeJFbEEbKymvSnuqqJAdKH954PmnelhIyx4gfz+japIUaYGzEzfUYVWrW5liR6XQYUWBbsqMjF9MUsOSosN/GV9mflUmFxXNiwFp8xk7ot9Vabq/qR/jphrp3ThUIqy0k3wrWDVLlqcDuGqitN0JG/FGPZa+r9dQa8AZaEJ2o=' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/randomwalkfilter/randomwalkfilter/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/randomwalkfilter/randomwalkfilter/.tmp/.initCmds.tcl' 'FPV_randomwalkfilter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/randomwalkfilter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
exit
