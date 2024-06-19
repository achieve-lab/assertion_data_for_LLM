# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 10:48:06 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 44371
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33925' '-nowindow' '-style' 'windows' '-data' 'AAABXniclY/BCsIwEERfFUU8+CGCXsRbz71WEbyWULUq1RTbKnjRT/VP6jRaoUd3ySY7MztJPMB/VFWFi+5dpU9IoPyF9/oefI921H2njSyfrR16zXAj6WuNmHDGEpFQchAyFmJIlZab8FJ8rpopLRcKtmyEh6ykHki9E3N1xgEL1uJyOSWa+yhPmk41FxHLoXarz8apYqbqYvEwlFemGyxHdcFfLpF7sZHKMFM3F76XrnA/fQOTjzFb' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/signed_mult_const_asic/signed_mult_const_asic_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/signed_mult_const_asic/signed_mult_const_asic_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_signed_mult_const_asic.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/signed_mult_const_asic.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
