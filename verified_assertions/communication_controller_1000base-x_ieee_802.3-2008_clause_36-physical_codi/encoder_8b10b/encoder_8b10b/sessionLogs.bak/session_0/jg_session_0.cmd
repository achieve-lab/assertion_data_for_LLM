# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-01 18:51:12 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 132986
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35865' '-nowindow' '-style' 'windows' '-data' 'AAABIHicfYzLDsFAGIW/IRqx8AAeQULYWXTdbYnEVmhLiJimlMSGR/Um47RRyWycP/NfzmUMED6dc9RoP9QCYiLVD+b9XUKDj+pu+czi5U3oNOHGEuj1GXHGsmZPyUHMUMyGk8pyF19Kv6jnKkvBlYxUfMxS7q7cOym3OhkxZyUtUyaRO9VW6J6xZcpEfax8or+hp2Qu1XLUNfiTqfABcjQjKg==' '-proj' '/home/vpulav2/Work/Jasper/encoder_8b10b/encoder_8b10b/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/encoder_8b10b/encoder_8b10b/.tmp/.initCmds.tcl' 'FPV_encoder_8b10b.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/encoder_8b10b.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top encoder_8b10b
exit
