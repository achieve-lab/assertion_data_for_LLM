# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-28 20:40:09 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 124560
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37843' '-nowindow' '-style' 'windows' '-data' 'AAABEHicbY7NCgFhFIafIZMsLFyCpeIKZm2LlK00fiKMMKNsuFR3Mp6RUVPe03d+3vO+py8Aokee53xQv5tCRgyNH4LXt4kCqijmWpWZPCsVGqW5lIS+Nn2OJMzZkLKV6cks2BsJN/nU/cV8MhLOXFmxlB8xVd1UvXaT2Xf965iZu9gLmRdi+7XuAwN9sQy0dJy8k7Bz6vzRFngDU/YhPg==' '-proj' '/data/vpulav2/Work/Jasper/cavlc_fsm/cavlc_fsm/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/cavlc_fsm/cavlc_fsm/.tmp/.initCmds.tcl' 'FPV_cavlc_fsm.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_fsm.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
exit
