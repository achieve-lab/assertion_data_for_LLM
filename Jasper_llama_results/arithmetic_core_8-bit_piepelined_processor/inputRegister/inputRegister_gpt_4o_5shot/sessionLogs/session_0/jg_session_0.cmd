# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:17:28 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 626314
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36219' '-nowindow' '-style' 'windows' '-data' 'AAABMHicZY67CsJAEEVvFINY+A3WglbapbaND7AN4iOuiLvERMFGP9U/WU+CEYIz7OydO3cegaTo6b1XZe0HIVSsGf6z4P0FUaCmlXmrySxejV/q1M21JOT1NdJFVolSFTIwQ5iNzrjVHb6gfiU63CpTrr128LFWqLuoD1Ru4AG3zrWmZuhx9ORaok41Bm2ZKPXQO6ZYncgmf0rDrnJDVl3kwAmq8r4plSMor27/AAyLJ8M=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/inputRegister/inputRegister_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/inputRegister/inputRegister_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_inputReg.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/inputReg.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva

# Elaborate design and properties
elaborate -top inputRegister

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
