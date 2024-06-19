# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-26 19:57:36 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 87240
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41619' '-nowindow' '-style' 'windows' '-data' 'AAABCnicVY69CsJAEIS/Uwwi4kNYCgp2Fqltowi2QaPxFy+oUbHRR/VNzslhhMxy+zM7u3sGCF/OOTzqT7mAiLHsD/P5JaGhiqKuVZnpuxKhUQ6XkkCvQ58TlpgNOTsxPTELjjLLXXyu/kU+k1nOXFmzEh8xk7opdarOTXlXf50wVy9lK13M0CsfjBioTrQTWprItMeyV9VmqWsJB3+hwBd16R+X' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_2d_fht/fht_1d_x8/backup/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_2d_fht/fht_1d_x8/backup/.tmp/.initCmds.tcl' 'FPV_fht_1d_x8.tcl'


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
  ${RTL_PATH}/property_gpt_3.5.sva

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
