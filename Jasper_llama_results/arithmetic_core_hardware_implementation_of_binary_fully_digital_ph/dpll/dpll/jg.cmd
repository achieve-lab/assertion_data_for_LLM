# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-22 13:08:01 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 387479
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40563' '-nowindow' '-style' 'windows' '-data' 'AAAA/HicVY5BCsIwFERflBZx4dozFPQEXbutInQrYlUUMaVaBTf2qN4kTooRMkP+/5k/E2KA/O2co8fwpZJSsBD/MJ/fkBti+PsgVlZd1CEJ4WBJdSbMuGLZcKTlJCWTsuUiWp7SW+1vqrVoabizp5JesJZ7JPdBm4fmqf66pNSukuJfmMu9U4exfLXSlnOfCg6PL7yTHSY=' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/dpll/dpll/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/dpll/dpll/.tmp/.initCmds.tcl' 'FPV_dpll.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/dpll.v \
  ${RTL_PATH}/phasecomparator.v \
  ${RTL_PATH}/freqdivider.v \
  ${RTL_PATH}/variableresetrandomwalkfilter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top dpll

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
