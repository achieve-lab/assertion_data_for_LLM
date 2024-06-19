# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 16:57:03 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 106331
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36117' '-nowindow' '-style' 'windows' '-data' 'AAABHnicVY67CsJAEEVPFINY+AXWFoKC1qmthCiCbQi+okQ36EbBRj/VP4nXxQg7w8zOfezuBED0rKoKF82HWkjMVPmP4P0bogA/vrjhM4uXd0KrvlxbQlWXIWcMCXtKDmIGYlJypeEuvpR+VS+UhguWLRvxMUu523LvpNw097TrnJU0y5qZ3KmcI4dy6R15C71gOAr1PVfifkw5qSZCY/2ZSbNu0w8qhiOE' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/tcLoad/tcLoad_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/tcLoad/tcLoad_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_tcLoad.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/tcLoad.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

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