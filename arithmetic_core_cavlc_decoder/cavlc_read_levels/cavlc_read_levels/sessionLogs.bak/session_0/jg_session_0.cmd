# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-28 21:06:31 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 130807
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41073' '-nowindow' '-style' 'windows' '-data' 'AAABMHicjY69CsJAEITnFINY+BCWghbWqW2jCLYSzh+UkAvRnGCjj+qbxC/BCNe5y+7Nzs4OZyTFz7qu1Ub/QYuUaEn+wry/IDYKo5l7IbN+Ba806I47SUSNNVMup51OqnSGmcKkykinO3zF/kovSKdSNx20h0+0QT1EfWTjwQv+utKWncXB42DBJfq0vchAnsrwm+NjQdIIhwKV04Vp8sdtEx8ocSfe' '-proj' '/data/vpulav2/Work/Jasper/cavlc_read_levels/cavlc_read_levels/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/cavlc_read_levels/cavlc_read_levels/.tmp/.initCmds.tcl' 'FPV_cavlc_read_levels.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_read_levels.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
exit
