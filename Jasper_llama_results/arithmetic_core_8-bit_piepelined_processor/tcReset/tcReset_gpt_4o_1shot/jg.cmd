# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:41:39 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 642332
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42735' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY67CsJAFERPFINY+AnWIigIlqlt4wNsRXxFCW4wGwUb/VT/ZJ0sRoj3cl8zs8sEQPR0zuGj+VALiZkqfxG8v0sUUI/ybtSR+as2oVU9riShqsuQC4Y1RwpOQgZCNqRKw114IT5Xz5SGK5Y9O+ExS6nbUh/E3LT35HXGSpxly0K6XGUZ+TuVoiN1pj8MZ139P13pIfNz4h2NhSfarHf7AdFAJKI=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/tcReset/tcReset_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/tcReset/tcReset_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_tcReset.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/tcReset.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva

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
