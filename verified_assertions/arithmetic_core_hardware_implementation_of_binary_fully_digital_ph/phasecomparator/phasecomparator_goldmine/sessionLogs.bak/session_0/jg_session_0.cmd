# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-22 15:32:43 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 401949
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46157' '-nowindow' '-style' 'windows' '-data' 'AAABOnichY9LCsJAEERrFIO48CCCwQNk7TaK4FaGJGpEnWCMghs9qjcZX4IRsrKb6U9VV9NjJEVP770a6z8IgWLN8Z+Z97eIjLpW970usnx1sjRoxe1IwBtrqrOcNtqpUg4yAbE64k538Aq+JBa400VXZUrBY62YHjK9hblRh9y60Bqu0J4dJZMJmhO9RWnR1htCcsJ+aYS6AHE60M3+6OobHboUJueqrPnFB9ywKkw=' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/phasecomparator/phasecomparator_goldmine/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/phasecomparator/phasecomparator_goldmine/.tmp/.initCmds.tcl' 'FPV_phasecomparator.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/phasecomparator.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva
exit
