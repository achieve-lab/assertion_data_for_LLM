# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 13:19:53 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 60568
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34419' '-nowindow' '-style' 'windows' '-data' 'AAABMHicZY67CsJAEEVvFINY+A3WgjZql9o2PsBWgo+4ou4SEwUb/VT/JJ4EIwRn2NmZe+88PEnBM89zldZ8EHyFmuI/897fJPBUt6Ju1JH5q/ZLraq5kvi8rga6yGqtWJkMSB8k0gm3uoNn8Feiw60SpdppCx5qibqNeg9zI+9x60wrOEOPoyfVAnWsIdmGiVIHvWOK1ZFq/Kc07Co2JEwpboh05o2oJjAH+tLy9g8LZyew' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/inputRegister/inputRegister_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/inputRegister/inputRegister_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_inputReg.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/inputReg.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
