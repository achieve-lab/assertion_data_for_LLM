# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 17:48:09 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 799266
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38097' '-nowindow' '-style' 'windows' '-data' 'AAABYHiclY67CsJAEEVPFINY+CGCNpIudbCLItiGEN+IG/IS0uin+ifxZjFCSmfY2Z0zdy7rAP6zaRpsDGsVl5BA+Qvn/X34Dv1o+0GfbF69G0bdcidxdabMuWOIOFFyEZmJxNyUhod4qXmumioNGQUH9uIhW6nHUh81qaxxwJqdZokcKjkkemfSx3aj0H5hvSNq0Ux9zkIsEYOJvFJLr+pWf7m0/0/FI5Zy9HR7omerbeMD5gUxVQ==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cavlc_decoder/cavlc_read_total_zeros/cavlc_read_total_zeros_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cavlc_decoder/cavlc_read_total_zeros/cavlc_read_total_zeros_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_cavlc_read_total_zeros.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_read_total_zeros.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva
exit
