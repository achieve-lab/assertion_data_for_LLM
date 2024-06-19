# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 18:25:28 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 135029
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37265' '-nowindow' '-style' 'windows' '-data' 'AAABOnicfY/NCoJQEIU/iyRa9CBBbaqda7cWQVsR+xXzSqlBm3rU3sSOlwzcNMOdnzNzDnMdwHvWdY21/kPBJcCX/8x5fwvPoWtN3+si61cnw6Altyuu3pgpGYaQIyVnIRMhEanccBdean5TzOWGKwV7dsIDNtoeavugSWWZPiu2msVSqKQQq061n1n9Js/Ej4XBSMxceoZE3eIPJ7TXRFz05uqWuuckXmF/8QGxvCl3' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_len_gen/cavlc_len_gen_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_len_gen/cavlc_len_gen_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_cavlc_len_gen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_len_gen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
