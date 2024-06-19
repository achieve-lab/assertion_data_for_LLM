# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-12 17:25:48 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 83010
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44967' '-nowindow' '-style' 'windows' '-data' 'AAABKHichY5JCsJAFERfFIO48AgeQNATZCe4EqIobkUcoyEd2sRpo0f1JrEiRuiV9ek/1ADtAcGjKAo+qN/VfEKGqh+813cJPFyUd81lJk9nQqMKVxZfr02PBMOCHTmRmK6YJbHKcBGfSz+ppyqDJWPDWnzIVO6m3FspZ+19/XXMXJrlyki+hBk3qQP2ulYc1a18mfZYiZbSqRjDQVfnT67EG9RLJfA=' '-proj' '/data/vpulav2/Work/Jasper/rxLenTypChecker/rxLenTypChecker/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/rxLenTypChecker/rxLenTypChecker/.tmp/.initCmds.tcl' 'FPV_rxLenTypChecker.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxLenTypChecker.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
exit
