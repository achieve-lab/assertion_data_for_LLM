# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:20:07 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 52171
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40373' '-nowindow' '-style' 'windows' '-data' 'AAABLnicbY67CsJQEERPFINY+BVWgikEu9SWRhFsQ3wlinqD3ijY6Kf6J3G8GCHgLvuamV3WA8JHWZY4a96VfCLG8p95r28TetTtMzfqyOxZq9CqliuJr+gy4IQhJqVgJ6QvJOEgN9yEF+IvyrnccMayYS08Yi51W+qtmKv6nn6dshC31CXLRMpUt6zbC1RXugod7eRCDHtNwV917D5IOCqGmkb6IRNj3edvsaQnCA==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/bitNegator/bitNegator_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/bitNegator/bitNegator_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_bitNegator.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/bitNegator.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

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
