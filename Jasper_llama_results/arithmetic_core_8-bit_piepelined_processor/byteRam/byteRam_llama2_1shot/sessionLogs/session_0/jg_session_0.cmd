# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:08:30 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 62683
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43919' '-nowindow' '-style' 'windows' '-data' 'AAABInicVY7LCsJADEVPFYu48BNci6Cg665cuK0PcFvqW1Gn1FbRjX6qf1Jvh1ZowmSSmzPJOID3zrIMa/WXgovPRP4351sknkPV8rpWVWafyg2N8nGJuDpt+lwxBOxJOUrpSQk5yw0P6an6N8VIbohJ2LKR7rMQ3RS9U+euvKO/TlmqF2vChTFPSw8U15oHLdGRuoaTqi6rgphbPrBb8yxkpGqovQexif3tD84yJII=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/byteRam/byteRam_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/byteRam/byteRam_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_ramByte.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ramByte.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -bbox_m byteRam

# Set up Clocks and Resets
clock clk
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit