# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-27 14:49:25 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 113095
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44789' '-nowindow' '-style' 'windows' '-data' 'AAABLHicbY5BC4JQEIQ/iyQ69CM6BgkRQgfPXS2CrhKVaURPSiu61E/tn9j4yEBol7f7dmZ2GQcInmVZYqP9UHEJmSl/4by/n8ChGdXcaiKLV6NDp16uJa5enxEnDBF7ClIhQyFrjkrDTXgh/qKaKQ1ncnZshYcspe5KHYu56j+Q1zkrcTGJdBFjq7wzxdO80U3oaSPTHcNBk/dHW3nJLDYR76v7cpBoI7e+PyiyJXk=' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_2d_fht/fht_1d_x8/fht_1d_x8_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_2d_fht/fht_1d_x8/fht_1d_x8_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_fht_1d_x8.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_1d_x8.v \
  ${RTL_PATH}/fht_bfly_noFF.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva
exit
