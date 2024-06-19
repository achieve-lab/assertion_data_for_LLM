# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-22 15:14:07 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 14897
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45859' '-nowindow' '-style' 'windows' '-data' 'AAABAHicVY5NDsFQFIW/Eo0YWIAlSFhBx6YlElMRVPxEG5TEhKXaSX0VJT0n7757zzn35QVA9CiKgg+ad0tIzEj+ELy+TRRQRzk36srkWbuhVS1XkdDTZcCRlDkbcrYqfZUFB5lyU8/1z9ZMppy4sGalHjM13Tad6Fzte/51zExvx96ayKH5pW9Bx2TmfqpbTv9MiTc3CB3S' '-proj' '/data/vpulav2/Work/Jasper/jk_ff/jk_ff/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/jk_ff/jk_ff/.tmp/.initCmds.tcl' 'FPV_jk_ff.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/jk_ff.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top JK_flipflop

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
