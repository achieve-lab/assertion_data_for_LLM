# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 16:57:12 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 106618
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46681' '-nowindow' '-style' 'windows' '-data' 'AAABHnicVY67CsJAEEVPFINY+AXWFoKC2Ka2EqIItiH4ihLdoBsFG/1U/yReFyPsDDM797G7EwDRs6oqXDQfaiExU+U/gvdviAL8+OKGzyxe3gmt+nJtCVVdhpwxJOwpOYgZiEnJlYa7+FL6Vb1QGi5YtmzExyzlbsu9k3LT3NOuc1bSLGtmcqdyjhzKpXfkLfSC4SjU91yJ+zHlpJoIjfVnJs26TT8qmCOF' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/tcLoad/tcLoad_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/tcLoad/tcLoad_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_tcLoad.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/tcLoad.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva
exit