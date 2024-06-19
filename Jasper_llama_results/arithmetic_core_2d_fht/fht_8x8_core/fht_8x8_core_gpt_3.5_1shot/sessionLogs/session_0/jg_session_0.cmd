# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 13:59:29 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 606777
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34291' '-nowindow' '-style' 'windows' '-data' 'AAABOHicdY/NCoJQEIU/iyRa9BwRFEQFLVy3tQjaSphmEV0prWhTj9qb2PGSgYtmmL9z5lzmOoD3LIoCa82HkovPXP4z5/1tPIe6lXOjjixftQqtSlytuIouA04YAnbk7IX0hWw4yg034bn4i3IqN5zJiNgK91lpu63tWMxVfU+3LliLi0m0FzDjrggIrTJiKDTUy9CRLhVmOGia/FWUd6WWGUs9VR3pmkRsZv/wAShcKBk=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/fht_8x8_core/fht_8x8_core_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/fht_8x8_core/fht_8x8_core_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_fht_8x8_core.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_8x8_core.v \
  ${RTL_PATH}/mtx_trps_8x8_dpsram.v \
  ${RTL_PATH}/fht_1d_x8.v \
  ${RTL_PATH}/fht_bfly_noFF.v \
  ${RTL_PATH}/fht_bfly.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
