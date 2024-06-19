# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:09:51 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 60211
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41055' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY67CsJAEEVPFINY+BGWojZil9o2imAbgsYXmg0xUbDRT/VP1ptghAVnmNmZM3d21wOCp7WW2toPJZ+Qufxn3vtbBB6uVX3LJcuXc0KnWW4kvqLPmBRDxJ6So8hQJOYsN9zFS82vypnckFOQsBUPWUndlXqnyU31QH9dsNZso+1Et6Sqc20XTBQVhZ42MlHDSd3ojzaqX4+5KKbqZqIH6Yv61x8W4iZd' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/clean_rst/clean_rst_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/clean_rst/clean_rst_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_clean_rst.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/clean_rst.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva

# Elaborate design and properties
elaborate -top clean_rst

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
