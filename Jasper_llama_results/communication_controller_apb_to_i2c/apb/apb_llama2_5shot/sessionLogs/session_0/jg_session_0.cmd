# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:08:50 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 25124
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34301' '-nowindow' '-style' 'windows' '-data' 'AAABEnicVY4/C8JADMV/VSzi4OjsLOgguHV2rSK4lvq3inpFWwUX/ah+k/N5tMIlJJe893JJAEQvay3Omk+lkJip/G/BpyqiAN9+fcNH5m/vhVY9XEtCRZchFwwJe0oOQgZCUk5yw0N4Kf6mnMsNVwq2bITHLKRuS70Tc1fd060zluJSIStG0q71D3SkyjVrOKrrV3zitqScFWN1E+3JpCncdV93UCE0' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_apb_to_i2c/apb/apb_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_apb_to_i2c/apb/apb_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_apb.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/apb.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top apb

# Set up Clocks and Resets
clock PCLK
reset PRESETn

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
