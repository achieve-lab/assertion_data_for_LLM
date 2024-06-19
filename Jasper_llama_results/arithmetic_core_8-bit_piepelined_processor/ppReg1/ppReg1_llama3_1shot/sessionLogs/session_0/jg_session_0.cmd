# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:17:51 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 65052
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44969' '-nowindow' '-style' 'windows' '-data' 'AAABHnicVY7LCsJADEVPFYu48AtcuxAUituu3dYHuC3FR6uoU7RVcKOf6p+Mt8UKkzCZyc1JMh4Qvqy11NZ+KvhEzOR/8z6/R+jhWpW3XGXxdm7oNM0N4uv0GXPBEJNScpAykpJwkhse0kvVb4q53HClYMdWesRKdFf0XpW73gP9dc5atYpdiksJmKhjo2nQE5trguGobOhQcb0x4awzVRZoZyayqH/6BRs4IzU=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/ppReg1/ppReg1_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/ppReg1/ppReg1_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_ppReg1.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ppReg1.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top ppReg1

# Set up Clocks and Resets
clock clk
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
