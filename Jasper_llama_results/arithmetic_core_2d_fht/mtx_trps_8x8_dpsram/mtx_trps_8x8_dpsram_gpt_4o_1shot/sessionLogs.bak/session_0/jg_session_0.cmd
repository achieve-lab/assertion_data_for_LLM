# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 13:56:01 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 604364
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36803' '-nowindow' '-style' 'windows' '-data' 'AAABknicrZC7CsJAEEVvFEUs/BBBQRBJkcLKNopgG8T4xLhLTFRs9FP9k3gSjJDOwhl2Hvfe2ZcjyXtkWabC6ndCU74m+Nec16fwHFUt72tVZPasZKlRDpeSFqujnk4yCrRVqj1IF2SpI250BU/hz0SLG8VKtFYI7mv+h/kW6g3MhXrEW6dawEWobuQEvWU6kEvvksOijzkhUh9+xTlSm10sqNGBbvzjfH5niybQsHjBAGZHlRS/8wY2BDnX' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/mtx_trps_8x8_dpsram/mtx_trps_8x8_dpsram_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/mtx_trps_8x8_dpsram/mtx_trps_8x8_dpsram_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_mtx_trps_8x8_dpsram.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/mtx_trps_8x8_dpsram.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva

# Elaborate design and properties
elaborate -top mtx_trps_8x8_dpsram

# Set up Clocks and Resets
clock sclk
reset rstn

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
