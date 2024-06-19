# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-08 18:08:02 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 5185
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35017' '-nowindow' '-style' 'windows' '-data' 'AAABEHicbY5NCsIwEIW/KBZx4aJHcCnoCbrWZSuCWxH/qBRTqlVwY4/qTeKLWCHgGzKT9zMhBkiezjk+6D7UIlJmqh/M63tJDCE874TKogkm9NrlNhLpDJlwxrLmSE0uZSxlQ6Gy3KXX8i/qpcpScWXPTnrKUum+0gc5N91H+mvGSl4mby6W6xWfr5hqbsVgoI1SiuUkFv/JerwBNVIggg==' '-proj' '/data/vpulav2/Work/Jasper/PSGFilter/PSGFilter/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/PSGFilter/PSGFilter/.tmp/.initCmds.tcl' 'FPV_PSGFilter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGFilter_change.sv

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top PSGFilter
exit 
