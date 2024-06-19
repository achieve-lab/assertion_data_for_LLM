# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 20:46:22 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 75605
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41425' '-nowindow' '-style' 'windows' '-data' 'AAABQnichY+7CsJAEEVvFINY+CGCaUSwSK1lIgHbsGh8oW7QRMFGP9U/icfFCKmcYWf3PmaY9SSFj6qq5KJ9p/iKNCV/4b2+j9BTMz641WTmz8Ytderm2uJz+hrqJKtUG5XawQxgjA6k1Q2+RL9Qc9LqrEKZVvCREtxd3GuUK++AXWMt0GK0GY4Sd+5qQj2SGRMC8JL5Uo/uHMZqD5r86UvdVgZkNAKN2WtLb+F+8wb/wyrn' '-proj' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGOutputSummer/PSGOutputSummer_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGOutputSummer/PSGOutputSummer_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_PSGOutputSummer.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGOutputSummer.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva

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
