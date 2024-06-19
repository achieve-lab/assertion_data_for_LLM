# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 17:29:30 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 781669
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42543' '-nowindow' '-style' 'windows' '-data' 'AAABOnicfY+9CsJAEIS/KAax8EEErbRLnTaKYBsk/hNyQZMINvqovsk5dxghjbvc/szOLHsBED2ttXjrPxRCEmL5z4L3t4gCuub6XhdZvToZBq24pYR6Y6YUGFKO1JyFTIRsyeWGu/Ba85tiKTdcqdizE56wFnso9kGTxitjlmw0y7Sh0YZMdS5+4fe7PJM+EwYjKUvtM1zUzf9oXC6lS8Vyly50z0lV5X/xAbLgKYo=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cavlc_decoder/cavlc_len_gen/cavlc_len_gen_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cavlc_decoder/cavlc_len_gen/cavlc_len_gen_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_cavlc_len_gen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_len_gen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva

# Elaborate design and properties
elaborate -top cavlc_len_gen

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
