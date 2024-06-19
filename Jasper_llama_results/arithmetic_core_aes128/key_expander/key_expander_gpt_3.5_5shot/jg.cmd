# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 17:28:05 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 779484
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37567' '-nowindow' '-style' 'windows' '-data' 'AAABOHicdY/NCoJQEIWPRRIteo4IalPuXLe1CNqKpJUVXTHtb1OP2pvYp2Tgohnu/JwzZ5hrSXKfRVGosvaDYMvTDP+Z9f4WrqWmlX2riSxejSx1anE9YvP6GukkI19b5YpBhiCBjrjRFTyHPxMT3ChVpkghuKcl012mNzAX6gG3zrWCOzBzJ0e6wQVsCKlTjVGv2Sz10CUgRnu66V9FeVeCytcEtUN2uGaHLqv+8AFlxCj5' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_aes128/key_expander/key_expander_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_aes128/key_expander/key_expander_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_key_expander.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/key_expander.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -top key_expander

# Set up Clocks and Resets
clock -infer
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
