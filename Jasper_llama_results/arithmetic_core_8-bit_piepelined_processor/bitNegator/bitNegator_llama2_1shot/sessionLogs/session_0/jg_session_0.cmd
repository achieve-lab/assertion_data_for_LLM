# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:20:02 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 52046
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40491' '-nowindow' '-style' 'windows' '-data' 'AAABLnicbY67CsJQEERPFINY+BVWggGtU1saRbAN8ZUo6g16o2Cjn+qfxPFihIC77GtmdlkPCB9lWeKseVfyiRjLf+a9vk3oUbfP3Kgjs2etQqtariS+osuAE4aYlIKdkL6QhIPccBNeiL8o53LDGcuGtfCIudRtqbdirup7+nXKQtxSlywTKVPdsm4vUF3pKnS0kwsx7DUFf9Wx+yDhqBhpGuqHTIx1n78BsWwnBA==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/bitNegator/bitNegator_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/bitNegator/bitNegator_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_bitNegator.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/bitNegator.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top bitNegator

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
