# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:17:03 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 62572
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37685' '-nowindow' '-style' 'windows' '-data' 'AAABOnicfY/LCoJQEIY/iyRa9CBBkdSihWu3FkFbMe1KdcS0oE09am9iv5KBm2Y4M2f+y2GOBbjPoiioov1QsfHxlL+w3t+La9GMcm41kcWr0aFTm2uJrdNnyAVDwI6cg5CBkJCT0nAXnou/qiZKQ0rGhli4z1LqrtRbMbfK6TFnJS6WJpK67KnmGWscxqoj+SO9DT05E7GGo6bpH09QbRNy1plocrTPXsqs+sUHXCAoFw==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/decoder_8b10b/decoder_8b10b_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/decoder_8b10b/decoder_8b10b_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_decoder_8b10b.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/decoder_8b10b.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva
exit
