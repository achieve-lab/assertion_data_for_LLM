# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-27 16:30:07 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 135870
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37989' '-nowindow' '-style' 'windows' '-data' 'AAABHHicXY69CsJAEIS/Uwxi4TNYC9qIXWrbKIJt8C8aCV5Qo2ijj+qbxMlhhHOX252dmT3WAOGzLEtcNB8qARET5S/M+wtCgx/V3PCZ2cvr0KqXa0ug12XAEUvMjoJUTF/MkkxpuYkvpJ9Vc6XlxIUtG/ERc7nbcidSrsI93TplIS1hL1/MSijjzlDTWgg68uf6xXJwG//O6o7cMSNtjd2dH/l1Iyk=' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_2d_fht/fht_bfly/fht_bfly_gpt_3.5/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_2d_fht/fht_bfly/fht_bfly_gpt_3.5/.tmp/.initCmds.tcl' 'FPV_fht_bfly.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_bfly.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5.sva
exit
