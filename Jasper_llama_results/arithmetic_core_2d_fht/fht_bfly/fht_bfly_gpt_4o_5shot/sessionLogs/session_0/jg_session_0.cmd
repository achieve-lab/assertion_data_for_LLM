# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 13:58:24 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 606443
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33011' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY69CsJAEIS/KAax8BmsBa20S20bRbAN/sVEghc0UbTRR/VNzslhhLjL7c3Ozt2OBwRPay0u2g8Vn5CZ8hfe+wsCj2ZUfavJLF6NGzr141ri6/QZccIQcaAkFTMUsyZTGm7iS80vqrnScKZgz058yFLqrtSxJlfhgbzOWWkWk0gXsRHKuDNWtxWCnvS5fjEc3a5/ZeUjd8zEuZpqdyJUOMcfdN0lkg==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/fht_bfly/fht_bfly_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/fht_bfly/fht_bfly_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_fht_bfly.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_bfly.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva

# Elaborate design and properties
elaborate -top fht_bfly

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
