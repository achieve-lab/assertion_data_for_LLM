# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-18 16:35:27 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 226337
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35183' '-nowindow' '-style' 'windows' '-data' 'AAABDHicZY7NCsIwEIS/KBbxID6CZ0GfoGevVQSvxb+qpZiiVtGLfdS+SZyKFYKzZDM7MxtigPDlnOOD9lMtIGKq+sFUXxIafNRzy1fmpXdDp1luIoFOnzEnLDF7Co5SRlJWZCrLXXoh/6KeqyxnruzYSo9YKN1VOpFzEx/qrzOW8hIOysWsxTIeTDRtxKCnfK5XLKmmwV+yxhvKNSB6' '-proj' '/data/vpulav2/Work/Jasper/fht_bfly/fht_bfly/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/fht_bfly/fht_bfly/.tmp/.initCmds.tcl' 'FPV_fht_bfly.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_bfly.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top fht_bfly
exit
