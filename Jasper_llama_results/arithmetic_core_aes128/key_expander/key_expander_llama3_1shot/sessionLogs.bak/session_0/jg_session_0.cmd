# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:00:19 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 67656
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43639' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY/JCsJAEEQrikE8+B0iKKjXnL1GEbyGYOKuE2LidtFP9U/iczBCDnYzvVR1NT2OJO9RFIWs1e8EV77G+M+c17fwHFXt09eqyPRZyVKjFJcjLq+tno4yCrRSrg1IFyTUHje6gOfwJ2KCG6XKFCsC9zVjusn0EuZM3eHWieZwO2Zu5FhXuJANEXWqPuoFm6UWugTEaEs3/KsI7CWhDrwR3YBb1qgy+4M3GAAo7Q==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_aes128/key_expander/key_expander_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_aes128/key_expander/key_expander_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_key_expander.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/key_expander.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

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
