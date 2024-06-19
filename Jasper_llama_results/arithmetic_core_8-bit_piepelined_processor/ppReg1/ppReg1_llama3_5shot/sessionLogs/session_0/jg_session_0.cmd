# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:17:55 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 65250
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45277' '-nowindow' '-style' 'windows' '-data' 'AAABHnicVY7LCsJADEVPFYu48AtcuxAURNx17bY+wG0pPlpFnaKtghv9VP+k3g5WmITJTG5OkvGA4FWWJdaaTwWfkJn8b97n9wg8XKvyhqss3s4Nrbq5RnydLkMuGCISCg5SBlJiTnLDQ3qh+k0xkxuu5OzYSg9ZiW6L3qty17unv85Zq1axS3EJY0bq2GgadMRmmmA4Kus7VGQ3xpx1Jsqm2pmKzO1PvxtwIzk=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/ppReg1/ppReg1_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/ppReg1/ppReg1_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_ppReg1.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ppReg1.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
