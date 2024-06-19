# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:39:40 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 639222
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41009' '-nowindow' '-style' 'windows' '-data' 'AAABIHicVY7LCsJADEXPKBZx4Rf4ASIoFHHXtdv6ALdFfFRFnKKtghv9VP9kvC1WmIRJZm5OkjFA9HLOUVnzqRAQM5X/zXx+l8jgW/lu+Mr87WVo1c01Euh0GXLBkpBScJQykLLmLLc8pBeq3xQzueVKzo6t9Jil6LbovSp33Xv664yVaiW7EJcSMlLHRtOgIzbTBMtJr75HlfszkQljdUyUQ209iM2rv34BXTwjPQ==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/ppReg1/ppReg1_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/ppReg1/ppReg1_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_ppReg1.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ppReg1.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
