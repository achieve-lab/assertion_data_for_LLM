# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:13:32 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 623362
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45495' '-nowindow' '-style' 'windows' '-data' 'AAABInicVY47C8JAEIS/KAax8CdYi6AgWKaysI0PsA2+4gP1QkwUbfSn+k/i5EiE7HJ7uzNze+MA3jvLMmzUXyouPhPlP5xv0XgO1cjnWhWZfSo3NMrHpcTVadPniiFgT8pRSE/IirPS8BCeir+pRkpDTMKOrXCfhdRNqUMxd/UdeZ2yFBdrw4UxT6seqG60D1pSR2INJ01d1oVibvW5h0hzwMg6Gurfg7rEuv0Bz2gklg==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/byteRam/byteRam_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/byteRam/byteRam_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_ramByte.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ramByte.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva

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
