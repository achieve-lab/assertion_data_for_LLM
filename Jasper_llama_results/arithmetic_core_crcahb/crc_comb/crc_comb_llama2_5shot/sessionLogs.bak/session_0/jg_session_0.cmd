# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 16:05:57 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 93461
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35911' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY69CsJAEIS/Uwxi4TNYC1oIdqltowi2IZ5/EfWCJgo2+qi+SRwPI8Rdbn9mZm/XAOGjLEu8Ne8KARET+c/M61uEhrp9+kYdmT1rGVrVcCUJ9LoMOOGI2VKQCukLSTjIHTfhhfiLYiZ3nMlZsxIeMZe6LfVGzFV1T7dOWYiz0lmfHUeWDDVl9SN0pM/EOvZ+178y9psT1QkjdWPt3onL/cVvaislUg==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_crcahb/crc_comb/crc_comb_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_crcahb/crc_comb/crc_comb_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_crc_comb.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/crc_comb.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top crc_comb
exit
