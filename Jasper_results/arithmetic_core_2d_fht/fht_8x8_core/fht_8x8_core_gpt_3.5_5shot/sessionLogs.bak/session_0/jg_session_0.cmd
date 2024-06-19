# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-27 16:09:20 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 127644
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35197' '-nowindow' '-style' 'windows' '-data' 'AAABOHicdY/NCoJQEIU/iyRa9BwR1KaEFq7bWgRtJUyziK6UVrSpR+1N7HjJwEUzzN85cy5zHcB/lmWJtfZDySVgLv+Z8/42vkPTqrnVRJavRoVOLa5XXEWfEScMITsK9kKGQjYc5Yab8EL8RTmTG87kxGyFB6y03dV2IuaqfqBbF6zFJaTaC5lxV4REVhkzFhrpZehJlwkzHDRN/yqquzLLTKT2VD1dk4rN7R8+KJQoHQ==' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_2d_fht/fht_8x8_core/fht_8x8_core_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_2d_fht/fht_8x8_core/fht_8x8_core_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_fht_8x8_core.tcl'


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
  ${RTL_PATH}/property_gpt_3.5.sva
exit
