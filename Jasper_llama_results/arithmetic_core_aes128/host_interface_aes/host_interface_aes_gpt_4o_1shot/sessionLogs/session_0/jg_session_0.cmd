# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 17:22:41 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 770764
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34597' '-nowindow' '-style' 'windows' '-data' 'AAABRnicfY9NC4JAEIZfiyQ69EOigqCjdOxqEXQVMSsjXPGjoEv91P6JPS4ZeGmGnZ15P5ZZR5L3rOtaNvoPiitfa/IXzvvbeI660cy9LrJ9dW5p0JpbicsZa6ZURoFOqpSATEBCXUmjO3gFX1Az0ihXqVgHcF871EPUR5gb/ZRdN9rDnVEWKANeTK0jRxUqopszR7wujfBmMEYXptVfV8AdwzZ7ZlaztFsvwBpfaX/0AeQELEY=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_aes128/host_interface_aes/host_interface_aes_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_aes128/host_interface_aes/host_interface_aes_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_host_interface.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/host_interface.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva


# Elaborate design and properties
elaborate -top host_interface_aes

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
