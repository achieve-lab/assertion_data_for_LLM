# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 19:25:34 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 70919
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44573' '-nowindow' '-style' 'windows' '-data' 'AAABGnicVY7NDsFQEIW/SzRi4QGsrSRsxK5r2xKJbXPjX8otWhIbHtWb1HGjojOZn3PmTGYMED6KosBb/a4UEDGW/8y8vk1oqNoH16rM9Fmp0CiXS0mgaNPniCNmQ85OTE+MJZE7buJzzS/KqdxxJmPFUnzETOqm1GtNruo7+nXCXLMTB20k0g4UC3XQkjLVvmMv1P3TxP6aFbYMhUa6t5Uu81++AbANIz0=' '-proj' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_fixed_point_arithmetic_modules/qmult/qmult_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_fixed_point_arithmetic_modules/qmult/qmult_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_qmult.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/qmult.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
