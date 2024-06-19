# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-28 19:12:32 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 165457
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44891' '-nowindow' '-style' 'windows' '-data' 'AAABCHicVY5NCsIwEIW/WCzSRY/gAQQ9QdduqxTcitYflNIUayu40aN6k/harJA3ZGby3ptJDJC8nHP0CJ5KISlLxR/m82sSg4/uPvKZ9durMB6GB0uoEzOnxLLlTMNFzEzMjkJheYhvpNfKlcJy486Rg/iUTO6J3Ccprfqp/rpiIy3XhlJ1L3fBQjlXhUjuSjss1/5t39fhCz0LH4A=' '-proj' '/home/vpulav2/Work/Jasper/can_btl/can_btl/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/can_btl/can_btl/.tmp/.initCmds.tcl' 'FPV_can_btl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_btl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top can_btl
exit
