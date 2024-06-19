# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:01:55 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 62288
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38595' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY65CsJQEEVvFINY+BGWojZil9o2LmAbgkuiqC/oi4KNfqp/Ek+CER44w2x37iyepOBZFIUqaT5wvkJN0Z94728SeHKlrBsuMn85UWrVwzXFx7oa6iyjSIly7UH6ILGOqNEdPKd/xWeo0UVWW23AQy1ht2Hv6NzIe/w604qegW9BS7+An2hEtman1GEiY4/RgWrwhxtV12OdsDHVhPspPFt9/QEkliaF' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/outputReg/outputReg_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/outputReg/outputReg_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_outputReg.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/outputReg.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
