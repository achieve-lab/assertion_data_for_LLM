# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:01:04 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 811627
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33759' '-nowindow' '-style' 'windows' '-data' 'AAABLHicbY67CsJAEEXvKgax8CMsBdNIutRaJiLYBvEZETfERMFGP9U/iSfBCAvOsDNzH7OMkRQ+q6pSE90HxVOkGfkL8/4OoZEbNe64zOLldKnXLrcWjzfURBdZJTqoVAozhlnrTFrd4Uv0KzUjrXIV2mkLH2mJu497j3JjHnFrrBVajDYHpfxS+3P59A1IGrCRwVidQP4fb31Lxpxoih7QAy44slE0d38AJoYljw==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_common_files/PSGFilter/PSGFilter_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_common_files/PSGFilter/PSGFilter_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_PSGFilter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGFilter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -top PSGFilter

# Set up Clocks and Resets
clock clk
reset rst

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit