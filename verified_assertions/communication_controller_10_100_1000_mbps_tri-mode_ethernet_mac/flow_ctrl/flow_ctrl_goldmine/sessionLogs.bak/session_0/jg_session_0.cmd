# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-23 23:29:06 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 46660
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35751' '-nowindow' '-style' 'windows' '-data' 'AAABInicbY7BCsJADETfKhbx4EeIJ0G/oGevVQSvIq0VRbulWgUv+qn+yTortrDghM0kkwkbA8RP5xxfdB9KEQlzRQvz/hWxIYTvO6GyfAUMvWa5sUR6Q6YUWDbsqTlImUjZclJY7tJrzS/KpcJScWVHJj1hJXdf7lyTm+qRbl2w1ixvt1P5K3UzcSqGgTZKaZajuvEfr7/FijPOuqjQfx4f7ZAlOg==' '-proj' '/data/vpulav2/Work/Jasper/flow_ctrl/flow_ctrl_goldmine/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/flow_ctrl/flow_ctrl_goldmine/.tmp/.initCmds.tcl' 'FPV_flow_ctrl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/flow_ctrl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva
exit
