# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 13:51:59 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 600461
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44815' '-nowindow' '-style' 'windows' '-data' 'AAABYHiclY/BCsIwEESnikU8+CGCgoi3nou3KoLXIlWrUm2xrYIX/VT/pL5EK/ToLtlkZ2cmiSPJe1RVJRvtO8VVIJ/8hfP6HjxHzTB9q4ksno1d6tTimuKy+hrqrFShYpU6gAxA1krIVDfwknlOzchUFxXaagMeaAm7C3vH5GqNfc21YpbjFKP7ME+oE3ShIhyMmzkbVcxNI7qIudTDK+OGVEe62V8u5v2ZRSY4TtnHMPYwC/vXN/DnMVs=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/signed_mult_const_fpga/signed_mult_const_fpga_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/signed_mult_const_fpga/signed_mult_const_fpga_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_signed_mult_const_fpga.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/signed_mult_const_fpga.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
