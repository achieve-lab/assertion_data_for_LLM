# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:25:16 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 835125
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45595' '-nowindow' '-style' 'windows' '-data' 'AAABHHicVY5NCsJADEbfKBZx4QE8gAtBQcRd126rCG5F/JfqjNoquNGjepP6dbBiEybJfHkhMUD4zLIMb9WHQkDESP4z8/4WoaFs+b9SViavUoZaMVwggV6TLicsc7ak7KV0pCyI5Za79FT9q6KTWy4krFlJj5iKroveqHNT3dKtY2bqnTlqIhbb01uqgoZIp3nLQb/2H5Pvdj4PxA+V+9q4E5n4Oz/x3SNB' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_fixed_point_arithmetic_modules/qmult/qmult_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_fixed_point_arithmetic_modules/qmult/qmult_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_qmult.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/qmult.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
