# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 13:54:30 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 602994
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33695' '-nowindow' '-style' 'windows' '-data' 'AAABVHicjY+9CsJAEIQnikEsfBBBG1FSpLKwjSLYBjH+YrwjJio2+qi+SfwSjJDOXe52d2Z2b8+R5D/zPFdpzQeXq0BT/GfO+5v4jupW1I06Mn/VotSqmiuJy+mqr7OMQu2U6QDSA1nphBvdwDP4C7fFjRKl2igCD7RA3Ua9hbmSj9l1piVcjOpOTNFbukN51B4xKuuEF2IN4Ne8I3WYYkGNjlSTP/uLnS2aUENmjYgjuD1T0vJ/H2vrLnM=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/mtx_trps_8x8_dpsram/mtx_trps_8x8_dpsram_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/mtx_trps_8x8_dpsram/mtx_trps_8x8_dpsram_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_mtx_trps_8x8_dpsram.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/mtx_trps_8x8_dpsram.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

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
