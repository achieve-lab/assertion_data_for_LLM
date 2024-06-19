# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:04:04 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 816313
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42993' '-nowindow' '-style' 'windows' '-data' 'AAABQnichY+9CsJAEIQnikEsfBDBVAoWqbVMJGAbROMf6h2aKNjoo/om8cthhFTucnO7M7PHnicpfJZlKRftB+Ar0pT8hff+FqGnZlR9q8nMX41b6tTDtcXn9DXUWUaptiq0hxnALHUkje7wBfoVtKTRRbkyreEjJbi7uDcoN+qAXWMt0GK0GY4Ct3WYgCcy44WAfsX7Uo9pC2N0oJv8mat2tHCpRm7jMXvtqHL3mw8A9ir6' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_common_files/PSGOutputSummer/PSGOutputSummer_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_common_files/PSGOutputSummer/PSGOutputSummer_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_PSGOutputSummer.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGOutputSummer.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva

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
