# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:11:32 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 826432
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45919' '-nowindow' '-style' 'windows' '-data' 'AAABRnichY/NCsJADISnikU8+CCC4kEv0rPXKoJXkfrXIu6irYIXfVTfpH5drbAnEzbJTDIhG0iKHmVZylnzTggVa4r/LHh9iyiQbxVu+Mz86WWpVYvrkZDXVV8nGa20V6EUpgez1hE3usEX9C9EixudlWurDXysBdNtpnd0rtRDbp1pSS9hLnHZoM5Bhn2fXSl4wEtgpA566/oZaPJXWd1pXR65q8fcdqDK3Y/e9TYshA==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_crcahb/crc_control_unit/crc_control_unit_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_crcahb/crc_control_unit/crc_control_unit_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_crc_control_unit.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/crc_control_unit.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
