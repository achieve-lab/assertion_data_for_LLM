# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:28:50 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 837429
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44683' '-nowindow' '-style' 'windows' '-data' 'AAABLHicbY7LCoJgEIWPRRIteoiWQW7CnbugrUXQVqKrUf2WmtCmHrU3+fuUDIRmmNs5Z4ZxJAVPa60qaz9IrkJN8Z85728TOGpaObeayPzVqFKnXq4lLtHXSBcZRdorVwwyBFnphBsV4Dl8Sk5wo5sybbUBD7VA3UW9g7nTD/h1piXcFVWBOtWEfIb3QNbclHpsJNwxOjJ5f7TlLwlopDG8T/VhD7BZ9fcHa1ImiQ==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_fixed_point_arithmetic_modules/qtwosComp/qtwosComp_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_fixed_point_arithmetic_modules/qtwosComp/qtwosComp_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_qtwosComp.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/qtwosComp.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -top qtwosComp
exit
