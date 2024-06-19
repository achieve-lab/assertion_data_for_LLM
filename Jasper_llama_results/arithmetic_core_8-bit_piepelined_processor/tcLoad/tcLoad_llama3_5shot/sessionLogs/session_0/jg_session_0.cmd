# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 16:58:39 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 107394
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33369' '-nowindow' '-style' 'windows' '-data' 'AAABHnicVY67CsJAEEVPFINY+AXWFoI2YpfaSogi2IbgK0p0g24UbPRT/ZN4XYywM8zs3MfuTgBEz6qqcNF8qIXETJX/CN6/IQrw44sbPrN4eSe06su1JVR1GXLGkLCn5CBmICYlVxru4kvpV/VCabhg2bIRH7OUuy33TspNc0+7zllJs6yZyZ3KOXIol96Rt9ALhqNQ33Ml7seUk2osNNGfmTTrNv0AKtAjiQ==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/tcLoad/tcLoad_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/tcLoad/tcLoad_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_tcLoad.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/tcLoad.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva

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
