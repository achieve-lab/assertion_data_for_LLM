# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 16:59:36 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 108068
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35179' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7LCsJADEVPFYu48BNci6Abcde12/oAt6X4qlKdYqcKbvRT/ZN6HaxQE5JJbs7MxAOCR1mWOGvelXxCpvKfea9vEXjU7dM36sr8WTuhVV2uEF/RZcgZQ8SegoOUgZSYVG64SS80z5UzueGCZctGeshSdFv0TpOr6p52nbHSzLJmIS5XWEauT0V0RGd6w3BU1//jIvdrzEkxVjeRnoi1bts30FQkkw==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/tcReset/tcReset_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/tcReset/tcReset_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_tcReset.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/tcReset.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
