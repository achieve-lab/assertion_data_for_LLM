# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:09:27 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 55592
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43603' '-nowindow' '-style' 'windows' '-data' 'AAABMnicdY7NDsFQEIW/SzRi4TEsJEQidl1bKpHYNvVXBLehJWx4VG9Sx41KujCT+TvnzGQM4D/yPMdZ9a7kETCU/8y8vo1vKNtnrpSRybNUoVYsFxJP0aTDEUtITMZWSFtIxF5uuQrPxJ+VE7nlRMqKpfCAqdR1qddiLupb+nXMTNycm9ONFLGupW6zq7rQXWhoKxFi2Wnq/dGH7ouIg6KvaaA/NmJS9/0bYYEn9w==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/byteNegator/byteNegator_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/byteNegator/byteNegator_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_byteNegator.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/byteNegator.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
