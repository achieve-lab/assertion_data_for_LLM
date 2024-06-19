# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 17:28:01 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 779023
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45871' '-nowindow' '-style' 'windows' '-data' 'AAABOHicdY/LCoJgEIWPRRIteo4ICqLauW5rEbQVScsu9Itpt009am9in5KBi2b453LOnGF+S5LzzPNcpTUfBFuuZvjPrPe3cCzVregbdWTxqmWpVYmrEZvX1UAnGXnaKtMOpA/i64gbXcEz+DMxxo0SpQoVgLtaMt1megNzoe5x61wruAMzd3KoG5zPhoA60RD1ms1SB10MYrSnm/xVFHfFqDyNUU/JI66J0KXlHz5ljCj1' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_aes128/key_expander/key_expander_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_aes128/key_expander/key_expander_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_key_expander.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/key_expander.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva

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
