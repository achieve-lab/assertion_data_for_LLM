# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:20:15 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 52458
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46267' '-nowindow' '-style' 'windows' '-data' 'AAABLnicbY67CsJQEERPFINY+BVWgmnELrWlUQTbEF+Jot6gNwo2+qn+SRwvRgi4y75mZpf1gPBRliXOmncln4ix/Gfe69uEHnX7zI06MnvWKrSq5UriK7oMOGGISSnYCekLSTjIDTfhhfiLci43nLFsWAuPmEvdlnor5qq+p1+nLMQtdckykTLVLev2AtWVrkJHO7kQw15T8Fcduw8SjoqhppF+yMRY9/kbsbYnCQ==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/bitNegator/bitNegator_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/bitNegator/bitNegator_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_bitNegator.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/bitNegator.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
