# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:11:22 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 825674
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33273' '-nowindow' '-style' 'windows' '-data' 'AAABSHichY+9CsJAEITnFINY+CCCIki61LZRBFuR+JcgXtCLgo0+qm8Sv5xGSOUutz8zs8uekRQ9yrKUt/adECjWFP+ZeX2LyKhpVd9qIvNnI0uderiWBLy+hjrJaqW9CqUgA5C1jrjVDbyAvxBz3Oosp6024LEWqLuodzBX6jG3zrSES9AlPlumHZ1l32dXSj/iJSBSj/nc85k/7d9kdWfu84QtITnkugMq5//0Bki9LHk=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_crcahb/crc_control_unit/crc_control_unit_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_crcahb/crc_control_unit/crc_control_unit_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_crc_control_unit.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/crc_control_unit.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -top crc_control_unit

# Set up Clocks and Resets
clock clk
reset rst_n

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
