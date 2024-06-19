# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:20:06 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 71484
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44481' '-nowindow' '-style' 'windows' '-data' 'AAABSnichY+9CsJAEITnFINY+CCCFqJdatsogm0I8TcEL8Qkgo0+qm8SvxxGSOUutzc3OzvsGUn+s65rueg/KJ4CrchfmPcX+EbdaN69LrN5dW5p0A63Eo8z1lRXWYU6qdQFZgITKSWt7vAl/Rs1I61yFTpoDx9oi3qI+kinAs/Zda0dvRiHCocYnKOP3EQKqjgpfjN8YpA0wiFDZZW45f7PNrtmzIdauM2XcGdQ4X71AZUVLPY=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_read_levels/cavlc_read_levels_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_read_levels/cavlc_read_levels_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_cavlc_read_levels.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_read_levels.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
