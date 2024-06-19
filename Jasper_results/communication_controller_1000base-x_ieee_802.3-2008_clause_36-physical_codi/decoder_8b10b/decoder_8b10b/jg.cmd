# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-01 17:14:42 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 127657
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44907' '-nowindow' '-style' 'windows' '-data' 'AAABIHicfYzNDsFAFIW/IRqx8AAeQULYWXTdbYnEVmiRipimlMSGR/Um40yjkm6cm7l37vm5BgifzjkqtB9qATGR6gfz/n5CQxN+bzWZxasxoVOHa0ug12fEGcuaAyWZmKGYDSeV5S6+lH5Rz1WWgis7UvExS7m7cu+l3KpkxJyVtFSeRG4/C+0ztkyZqI+VT3QbekrmUi1HbYM/GY8PbfgjFg==' '-proj' '/home/vpulav2/Work/Jasper/decoder_8b10b/decoder_8b10b/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/decoder_8b10b/decoder_8b10b/.tmp/.initCmds.tcl' 'FPV_decoder_8b10b.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/decoder_8b10b.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top decoder_8b10b

# Set up Clocks and Resets
clock RBYTECLK
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
