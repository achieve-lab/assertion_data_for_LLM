# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 10:45:51 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 42897
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40503' '-nowindow' '-style' 'windows' '-data' 'AAABUnicjY+7CsJAEEVvFINY+CGCNqKkSGFlG0WwDcH4xLghJio2+qn+STxZVEjnDLsz9zH7cCT5j7IsZaN5Z3MVaEr+wnl9Gt9RPSrcqDPzZ61Kre/w1+KyuurrJKNQWxXaw/RgIh1Joyt8gX5mT0mjTLnWiuEDLXC3cW9QLvRj3jrTEi3BdaPm+FOmQ3lgjxpbnHFDogH6inukDqeksEYH0OTP+dC+suoiDUEjlB1n5PZ3bxNPLms=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/mtx_trps_8x8_dpsram/mtx_trps_8x8_dpsram_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/mtx_trps_8x8_dpsram/mtx_trps_8x8_dpsram_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_mtx_trps_8x8_dpsram.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/mtx_trps_8x8_dpsram.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva

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
