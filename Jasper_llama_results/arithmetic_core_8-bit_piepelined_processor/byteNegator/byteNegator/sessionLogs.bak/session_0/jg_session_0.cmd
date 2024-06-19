# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-20 16:46:57 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 317615
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38243' '-nowindow' '-style' 'windows' '-data' 'AAABGHicdY49CsJAEIW/VQxiYekRLAQ9QWpLowi24m8wiBs0UbTRo3qT9WUxwha+Yf7evBnGAPHTOYdH86EQkTCW/WDe3yI2hKj6RsjMXkGGVr1cSyJ5lyEnLEtSSg5iBmJWHGWWm/hS84tiLrOcKdixFZ8wl7ot9V6Tq+q+fp2y0GzN3esm8lTXCr85Ut7oLnS0lYuxZOp6f/QVPncxIvI=' '-proj' '/data/vpulav2/Work/Jasper/byteNegator/byteNegator/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/byteNegator/byteNegator/.tmp/.initCmds.tcl' 'FPV_byteNegator.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/byteNegator.v
exit
