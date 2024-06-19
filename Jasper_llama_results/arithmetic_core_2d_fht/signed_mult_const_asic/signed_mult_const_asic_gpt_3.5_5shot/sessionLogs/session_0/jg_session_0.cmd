# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 13:51:27 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 599681
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36645' '-nowindow' '-style' 'windows' '-data' 'AAABYHiclY+9CsJAEIS/KAax8EEEbSRd6mAXRbANIf4TvWASBRt9VN8kTk4jpHSX27udmZ27cwD/UVUVNrp3FZeQQPkL5/U9+A7tqPtOG1k8Wzv0muFG4moNGXPGELGj5CBkJCQmVRpuwkvxuWqmNFwo2LAWHrKUui/1VszVGgfMWYnL5bTT3Ed50nSquYhEDrVbfY6tKmGiLhEPA3llusFwVDf7y6V+f2aRqRw97Z6YvZSF/esb8hcxYw==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/signed_mult_const_asic/signed_mult_const_asic_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/signed_mult_const_asic/signed_mult_const_asic_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_signed_mult_const_asic.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/signed_mult_const_asic.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -top signed_mult_const_asic

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
