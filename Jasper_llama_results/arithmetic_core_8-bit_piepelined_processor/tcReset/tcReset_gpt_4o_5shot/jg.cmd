# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:41:43 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 642556
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45963' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY67CsJAFERPFINY+AnWImilXWrb+ABbEV9RghvMRsFGP9U/WSeLEeK93NfM7DIBED2dc/hoPtRCYqbKXwTv7xIF1KO8G3Vk/qpNaFWPK0mo6jLkgmHNkYKTkIGQDanScBdeiM/VM6XhimXPTnjMUuq21AcxN+09eZ2xEmfZspAuV1lG/k6l6Eid6Q/DWVf/T1d6yPwce0cT4Yk2691+ANF4JKY=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/tcReset/tcReset_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/tcReset/tcReset_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_tcReset.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/tcReset.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva

# Elaborate design and properties
elaborate -top tcReset

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
