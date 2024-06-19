# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 13:57:16 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 605250
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40541' '-nowindow' '-style' 'windows' '-data' 'AAABOnicfY/NCsJADIS/Khbx4IMICkKPPfdaRfBa/KtVilu0VfSij+qb1NnFCr2YsNnJZLKbeED4rOsaZ92Hgk9MJP+Z9/6C0KNtNu+0mfmrdUOvaW4kvs6QMScMCXsqDmJGYlbkcsNNfKX6RbGQG86U7NiKj1lI3Zc6VeXqOiNmLFVLyaRLWAvl3IXsH3aXifiNOBios9B7hqOy4E+Pna1wtcBNOtU8mVDptvgAoPwpMg==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/fht_bfly_noFF/fht_bfly_noFF_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/fht_bfly_noFF/fht_bfly_noFF_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_fht_bfly_noFF.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_bfly_noFF.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva

# Elaborate design and properties
elaborate -top fht_bfly_noFF

# Set up Clocks and Resets
clock clk
reset rstn

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report

exit
