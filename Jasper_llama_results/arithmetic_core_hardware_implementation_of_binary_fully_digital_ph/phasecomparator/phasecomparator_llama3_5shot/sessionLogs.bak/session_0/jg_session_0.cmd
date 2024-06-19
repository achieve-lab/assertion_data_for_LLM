# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 16:10:30 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 78051
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45789' '-nowindow' '-style' 'windows' '-data' 'AAABQnichY+9CsJAEITnFINY+CCCaUSwSG0bRbANR/yJol4wiYKNPqpvEr8EI6Ryl9uf2Zllz0gKnmVZqrbug+Ap1Bz/mXl/i8CobVXfaSPLVytLvUbcUDzeUGNd5BRpr0IHkBGI1Ql3uoMXzDNiijtdlWurDXioFew+7B2TG7XPrQutmaVK2JHBjNGc6S1Ki7ba4JNj9ksD1CmI05Fu9kcX1VdZcKsJ3RRmwiSvf/MBOHIrkQ==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/phasecomparator/phasecomparator_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/phasecomparator/phasecomparator_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_phasecomparator.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/phasecomparator.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
