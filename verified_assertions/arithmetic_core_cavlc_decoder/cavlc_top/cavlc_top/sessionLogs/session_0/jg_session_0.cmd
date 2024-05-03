# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-30 15:51:57 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 50448
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43221' '-nowindow' '-style' 'windows' '-data' 'AAABEHicbY47CsJQEEVPFEUsLFyCpaArsLaNItiKxA+KmKBJBBtdqjuJJ2KEgHd487n3zvACYPIoioIPmndTm5Cp8UPw+jaTgDrKuVFn5s9ahVa1XFnavh4jzsSs2JNxkBnKrDkZMTf5TP1qToyYCylbNvIhC90d3TuV3H7gX2cs1SIv5F6I7FO3EsbWSAa6biTeiTk69f94S7wBVy4hWA==' '-proj' '/data/vpulav2/Work/Jasper/cavlc_top/cavlc_top/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/cavlc_top/cavlc_top/.tmp/.initCmds.tcl' 'FPV_cavlc_top.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_top.v 

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/cleaned_property.sva

# Elaborate design and properties
elaborate -top cavlc_top
