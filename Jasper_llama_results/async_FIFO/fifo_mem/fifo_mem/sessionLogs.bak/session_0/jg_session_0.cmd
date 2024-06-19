# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-22 14:46:06 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 9608
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38807' '-nowindow' '-style' 'windows' '-data' 'AAABDHicZY7NCsIwEIS/KBbxID6CZ0GfoGevrQheRdSIYpuirYIXfVTfJE6LFYKzZH9mZ4cYIH5672nQfShFJMwVP5j3t4kNIeq5EzKLV1Ch1x63kkhvyJQcx5oDFUcxEzEbzgrHXXyl/VW5UDgulOzZiU9YSt2X2mpzUz/WX1NW2lk52cY1kzpjpqutHGEgfSEXx0nT6E9Z4wPHpSBi' '-proj' '/data/vpulav2/Work/Jasper/fifo_mem/fifo_mem/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/fifo_mem/fifo_mem/.tmp/.initCmds.tcl' 'FPV_fifo_mem.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fifo_mem.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top fifo_mem
exit
