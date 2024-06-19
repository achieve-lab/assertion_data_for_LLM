# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:17:03 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 625535
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38553' '-nowindow' '-style' 'windows' '-data' 'AAABMnicZY7NCsJADIRnFYt48Bk8CwoieurZa/0Br0X8qRVxl9oqeNFH9U3q12KFYsIm2clMEiPJf+Z5rtKaD4KnQDP8Z+b9LXyjuhX/Rh1ZvGpZalXiiuLxuhroIqtQkTLFIH2Qjc641R08o38lOtwqUaq9duCBVrDbsA90btQ9bp1rTS9G49CkWsKONKTaMlHqwHdMsTrxm/4xY3YVG5LyIkcdaox+Qh7RO6JMy+s/Vj0ntA==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/inputRegister/inputRegister_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/inputRegister/inputRegister_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_inputReg.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/inputReg.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
