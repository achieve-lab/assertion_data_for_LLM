# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:13:27 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 623092
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42429' '-nowindow' '-style' 'windows' '-data' 'AAABJHicVY5LDoJAEEQfGolx4RE8gIluDDtWLtziJ3FL/KJGHYKg0Y0e1ZtgMQETujPdPVXVHwfw33meY635UnAJmMj/5nzLwneoW/Fv1JHZp5ahVTVXElevy4ArhpCIjKOQvpAVZ7nhITwTf1OM5YaElB1b4QELqdtS78XcVfd065SluEQTLox5WvVQcaN50JE6Fms42U3rUjG3+uKGWP+QkXo8ZU+bD1Kn9t4fEy8kjw==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/byteRam/byteRam_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/byteRam/byteRam_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_ramByte.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ramByte.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

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
