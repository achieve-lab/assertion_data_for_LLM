# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:01:08 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 811975
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37991' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY69CsJAEIS/Uwxi4UNYigqCZWotExFsg/iXiHghJgo2+qi+SZwcRgi4y+3NzM7erQH8Z1mWuGg/VDwC5spfmPcX+IZmVLzVVJavxg2deri2eDp9xlywRBwpSKQMpWw4Ky136YX6V9VUacnI2bOTHrCSuyv3QZ2b8EC7hqzVC9VbiCV6pfJnTHRvxaCniVSK5SQ2+uOtdkmFI2Zus6n+j4Vyt/UH4Lcllg==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_common_files/PSGFilter/PSGFilter_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_common_files/PSGFilter/PSGFilter_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_PSGFilter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGFilter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
