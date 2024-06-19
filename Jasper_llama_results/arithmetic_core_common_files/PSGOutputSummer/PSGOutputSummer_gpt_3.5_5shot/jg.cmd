# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:03:56 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 815626
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44029' '-nowindow' '-style' 'windows' '-data' 'AAABRHichY/NCoJQEIWPRRItepAgN+EmXNdSQ2grUVZGdS+lBW3qUXsT+5QMXDXDnZ9zzgxzHUnBsyxL1dZ9EFyFmuE/c97fInDUtqrvtJHFq5WlXjPcSFzeUGOdZZRop0IZyAhkpSNudAcv4K9EixtdlCvVBjxUjLqPegtzo/a4NdISLoKboyhQ2zrGxBOessGjX7NfGjBtQYwOdNM/c9WNFizRhB0+2eeyPdN5/Z8PUVYq7w==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_common_files/PSGOutputSummer/PSGOutputSummer_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_common_files/PSGOutputSummer/PSGOutputSummer_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_PSGOutputSummer.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGOutputSummer.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -top PSGOutputSummer

# Set up Clocks and Resets
clock clk_i
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
