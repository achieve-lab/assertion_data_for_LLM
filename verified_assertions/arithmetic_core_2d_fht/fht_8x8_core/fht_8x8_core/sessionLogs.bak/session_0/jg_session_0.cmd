# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-22 17:23:03 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 420783
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41843' '-nowindow' '-style' 'windows' '-data' 'AAABHHicdY7NDsFAFIW/IRqxsPYIImFt0bVticR2ItWiEdOgiA2P6k3GaaOSLpyb+3fuOZMxQPj03lOh/VAJiJgpfjDv7xAamij3VpNZvBodOrW5lgTKPmOOOCxbCvZiRmLWHBSOm/hC97NqrnCcuJCwER+xlLordarLVfNQf52z0i1lJ51lyl1piStnwkRsrJehJ18uzpFpG/x1lPgA7yEjEA==' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_2d_fht/fht_8x8_core/fht_8x8_core/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_2d_fht/fht_8x8_core/fht_8x8_core/.tmp/.initCmds.tcl' 'FPV_fht_8x8_core.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_8x8_core.v \
  ${RTL_PATH}/mtx_trps_8x8_dpsram.v \
  ${RTL_PATH}/fht_1d_x8.v \
  ${RTL_PATH}/fht_bfly_noFF.v 

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top fht_8x8_core
exit
