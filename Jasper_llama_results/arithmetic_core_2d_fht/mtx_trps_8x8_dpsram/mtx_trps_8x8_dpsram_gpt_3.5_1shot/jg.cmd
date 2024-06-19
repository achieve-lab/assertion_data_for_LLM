# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:01:45 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 609132
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33115' '-nowindow' '-style' 'windows' '-data' 'AAABVHicjY+9CsJAEIQnikEsfBBBQURJkcrCNopgG8T4i/GOmKjY6KP6JvFLUCGdu9zt7szs3p4jyX/kea7S6ncuV4Em+M+c1yfxHVWtqGtVZPasRKnxbf5KXE5bXZ1kFGqrTHuQDshSR9zoCp7Bn7ktbpQo1VoReKA56ibqDcyFfMSuUy3gYlQ3Yore0h3Ko/aIUVknvBCrB7/iHanFFAtqdKAa/9lf7GzRhBowa0jsw+2Ykpb/ewNrsy5v' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/mtx_trps_8x8_dpsram/mtx_trps_8x8_dpsram_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/mtx_trps_8x8_dpsram/mtx_trps_8x8_dpsram_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_mtx_trps_8x8_dpsram.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/mtx_trps_8x8_dpsram.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
