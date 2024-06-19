# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 10:47:53 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 44002
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46817' '-nowindow' '-style' 'windows' '-data' 'AAABXniclY/BCsIwEERfFUU8+CGCHgRvPfdaRfBaQtWqVFNsq+BFP9U/qdNohR7dJZvszOwk8QD/UVUVLrp3lT4hgfIX3ut78D3aUfedNrJ8tnboNcONpK81YsIZS0RCyUHIWIghVVpuwkvxuWqmtFwo2LIRHrKSeiD1TszVGQcsWIvL5ZRo7qM8aTrVXEQsh9qtPhunipmqi8XDUF6ZbrAc1QV/uUTuxUYqw0zdXPheusL99A2TfTFa' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/signed_mult_const_asic/signed_mult_const_asic_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/signed_mult_const_asic/signed_mult_const_asic_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_signed_mult_const_asic.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/signed_mult_const_asic.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva
exit
