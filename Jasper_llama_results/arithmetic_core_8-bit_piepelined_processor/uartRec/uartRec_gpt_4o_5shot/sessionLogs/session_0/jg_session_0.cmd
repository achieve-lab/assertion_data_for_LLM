# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:53:52 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 648036
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45513' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY69CsJAEIS/KAax8BGsRdBKu9S28QdsQ4j/iBc0UbDRR/VNzslhhHOX25udnb2bAIie1lpcNB8qITFT5S+C9xdEAX5UfcNn5i/vhla9XEtCnS5DzhgSdpQcxAzEpJyUhrv4UvOraq40XCjYsBYfs5S6LfVWk5twT15nrNxO6pQLaTNGQpneg47UuSaGo7r+n67ykKtLGDtHE/27Fyqc2w/RdCSe' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/uartRec/uartRec_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/uartRec/uartRec_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_uartRec.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/uartRec.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
