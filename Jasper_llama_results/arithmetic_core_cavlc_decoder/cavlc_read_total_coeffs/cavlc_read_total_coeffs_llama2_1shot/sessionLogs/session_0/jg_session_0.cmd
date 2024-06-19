# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 18:25:57 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 135178
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37275' '-nowindow' '-style' 'windows' '-data' 'AAABYniclY67CsJAEEVvFINY+CGCgtbBUuyiCLYhROMDdUNego1+qn8STxYjpHSG3Z05c+eyjiTvWVWVbHQfXK58LchfOO9v4TlqR9132mT9ar1Sr1luJC5nqLFuMgp0UKETZAQJdSGN7vCCecadkEapcu21g/vaoO6jjpmU1HP+utKWWYRDiUNEnaIP7UbOfm69a4WBx2SmCTSCSgPcEjaMznTLP30C++tQV86Mbgo7Wm0dH0KOMdI=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_read_total_coeffs/cavlc_read_total_coeffs_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_read_total_coeffs/cavlc_read_total_coeffs_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_cavlc_read_total_coeffs.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_read_total_coeffs.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva
exit
