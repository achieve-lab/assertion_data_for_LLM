# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 13:49:33 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 598815
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36651' '-nowindow' '-style' 'windows' '-data' 'AAABXniclY/BCsJADERfFUU8+CGCguCx516rCF5LqVqV6hbbKnjRT/VP6uxqhR5N2GwymcxuPMB/1HWNs+5doU9IIP+Z9/omvkfbbN1pI8tn64ZeM9xQ+jojJpwxRKRUHISMhcRkcsNNeKV+oZjLDRdKtmyEh6zEHoi9U+fqhAMWrNUrpJRq7sM8aTrTXEQiBatm89ixEqaqEvVhKK1cLxiOqoK/VOz/c4fM3TYz4Xtlpdv0DZR7MWo=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/signed_mult_const_asic/signed_mult_const_asic_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/signed_mult_const_asic/signed_mult_const_asic_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_signed_mult_const_asic.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/signed_mult_const_asic.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
