# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 21:05:21 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 151836
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36343' '-nowindow' '-style' 'windows' '-data' 'AAABMnicdY7NDsFQEIW/SzRi4TEsJEQkdl1bKpHYNvVXBLehJWx4VG9Sx41KujCT+TvnzGQM4D/yPMdZ9a7kETCU/8y8vo1vKNtnrpSRybNUoVYsFxJP0aTDEUtITMZWSFtIxF5uuQrPxJ+VE7nlRMqKpfCAqdR1qddiLupb+nXMTNycm9ONFLGupW6zq7rQXWhoKxFi2Wnq/dGH7ouIg6KvaaA/NmJS9/0bYW8n9g==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/byteNegator/byteNegator_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/byteNegator/byteNegator_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_byteNegator.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/byteNegator.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top byteNegator

# Set up Clocks and Resets
clock -infer
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
