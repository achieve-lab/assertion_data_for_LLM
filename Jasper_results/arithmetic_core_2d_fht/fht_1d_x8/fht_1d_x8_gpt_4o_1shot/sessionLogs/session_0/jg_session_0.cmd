# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-27 15:24:18 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 118698
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44577' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY69CsJAEIS/KAax8CEsRYWAhUVq2yiCbRA1RhHv0ETFRh/VN4mTwwgBd7n9mZ3dGw8In0VR4Kz5UPCJmMp/5r2/RehRt7Jv1JH5q5ahVS1XFF+vy5AThpgdOXshfSErjnLDTXiu+UXRyg1nMrZshEcsxG6LnWhyVd2T1hlLzRJS8WICx7wzYaR+rZvQ0YbVHcNB3eAPt9RiHTZ2ygL9n6rKnOoP4w8lgA==' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_2d_fht/fht_1d_x8/fht_1d_x8_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_2d_fht/fht_1d_x8/fht_1d_x8_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_fht_1d_x8.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_1d_x8.v \
  ${RTL_PATH}/fht_bfly_noFF.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva

# Elaborate design and properties
elaborate -top fht_1d_x8

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
