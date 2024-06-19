# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 19:48:01 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 147804
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38319' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY69CsJAEIS/Uwxi4TNYC9qIXWrbKIJtiOdfRL2giYKNPqpvEsfDCHGX25+Z2ds1QPgoyxJvzbtCQMRE/jPz+hahoW6fvlFHZs9ahlY1XEkCvS4DTjhithSkQvpCEg5yx014If6imMkdZ3LWrIRHzKVuS70Rc1Xd061TFuKsdNZnx5ElQ01Z/Qgd6TOxjr3f9a+M/eZEdcJI3Vi7d+Jyf/Ebaj0lUw==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_crcahb/crc_comb/crc_comb_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_crcahb/crc_comb/crc_comb_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_crc_comb.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/crc_comb.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva

# Elaborate design and properties
elaborate -top crc_comb

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
