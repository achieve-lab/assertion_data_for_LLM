# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:05:37 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 68198
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43061' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY9LC4JQEIWPRRIt+h0RFOTadVuLoK1I2ruumPba1E/tn9y+JAMXzXDncc6cYa4jyX9Ya1Va805wFWiM/8x5fQvfUd0+faOOTJ+1LLUqcTXi8roa6CijUCsV2oD0QSLtcaMLeAF/Iqa4UaZciWLwQDOm20wvYc7UPW6daA63Y+ZGTnSFi9gQU2caol6wWeqgS0GMtnTeX0VYXhLpwPPoRtyyRpWXP3gDF+4o7A==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_aes128/key_expander/key_expander_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_aes128/key_expander/key_expander_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_key_expander.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/key_expander.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

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
