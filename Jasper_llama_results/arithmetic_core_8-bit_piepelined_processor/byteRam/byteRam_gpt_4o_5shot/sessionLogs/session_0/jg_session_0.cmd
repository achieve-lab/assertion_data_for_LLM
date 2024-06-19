# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:14:47 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 624867
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39763' '-nowindow' '-style' 'windows' '-data' 'AAABYnicrY+7CsJAEEVPFCVY+AnWImilXSoL2/gA2+D7gbohJoo2+qn+SbxZEiG9M+zszL13ZmcdwHulaYq16lOhjs9I/jPnkyeeQ9myulJGJu/SDbWiuZC4Ok26XDAE7Eg4COkIWXCSG+7CE/FXxVBuiIjZsBbuM/tDvyv1VsxNeUt/HTMXF2nCmSEPq+4prjQPGlKHYg1HVW2WuWJq9dkOoeqAvt1ooHf3ymL72y/P2y/3' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/byteRam/byteRam_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/byteRam/byteRam_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_ramByte.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ramByte.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
