# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 13:56:57 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 604760
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44985' '-nowindow' '-style' 'windows' '-data' 'AAABPHicfY/NCsJADIS/Khbx4IMICiJ66rnXKoLX4n+V4hZtFb3oo/omdXaxQi8mbJKdyewmHhA8y7LEWfOh4BMRyn/mvb9F4FE3e2/UkdmrlqFViasWX6dLnxOGmD0FByE9IUtSueEmvBB/UczkhjM5WzbCI+bqbqt7J+bqlCFTFuJ2JOqLWalKuauyf9hdBsLXwqAjZab3DEfdJn80drbMcSPpx8pDTZSIzd0eH+3MKSc=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/fht_bfly_noFF/fht_bfly_noFF_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/fht_bfly_noFF/fht_bfly_noFF_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_fht_bfly_noFF.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_bfly_noFF.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
