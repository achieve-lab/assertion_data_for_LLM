# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 18:41:50 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 64208
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40353' '-nowindow' '-style' 'windows' '-data' 'AAABFnicVY47C8JAEIS/UwxiYW1tKWgjdqltowi2IRifqBc1UbDRn+o/OcfDBLLD7e3Ozj4MEL6cc3hrPuUCIqZCZebzD0JD3X55o87M37UfWmVzKQn0ugw5Y4nZUrAXMxCTcBQsD/GF6jf5TLBcyVmTio9YSN2WeqPKXXFPt85YqnbRhFQYSb3SJOhIl6nbclDWrxSx35Rw0hsrm2jXTqrcX/gFB98iBw==' '-proj' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_fixed_point_arithmetic_modules/qadd/qadd_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_fixed_point_arithmetic_modules/qadd/qadd_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_qadd.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/qadd.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
