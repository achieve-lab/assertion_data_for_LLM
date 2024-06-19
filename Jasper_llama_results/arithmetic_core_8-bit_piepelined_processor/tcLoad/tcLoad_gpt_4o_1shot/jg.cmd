# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:40:54 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 641016
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42875' '-nowindow' '-style' 'windows' '-data' 'AAABHnicVY69CsJAEIS/KAax8AmsLQQFwTK1lRBFsA3BvyjBC5oo2Oij+ibn5DDCzXJ7uzNztxsA0ctai0P7qRQSM1f8EXx+RRTgo+5bPrN6ezd0mseNJdTpM+aCIeFIxUnMSExKrjA8xFfSb8qFwnClZM9OfMxa7q7cByl31QPtumQjrWTLQu5Uzonrcuk9eQv9YDirG3quen4hJmHmtplqZqaqdJt+ASu8I5g=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/tcLoad/tcLoad_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/tcLoad/tcLoad_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_tcLoad.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/tcLoad.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva

# Elaborate design and properties
elaborate -top tcLoad

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
