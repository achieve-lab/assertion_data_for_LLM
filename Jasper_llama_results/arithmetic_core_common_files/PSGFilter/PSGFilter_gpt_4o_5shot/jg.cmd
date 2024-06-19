# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:01:15 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 812394
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44321' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY69CsJAEIS/Uwxi4UNYilppl1rLRATbIP4lIl6IiYKNPqpvEieHEQLucnszs7N3awD/WZYlLtoPFY+AufIX5v0FvqEZFW81leWrcUOnHq4tnk6fMRcsEUcKEilDKRvOSstdeqH+VTVVWjJy9uykB6zk7sp9UOcmPNCuIWv1QvUWYoleqfwZE91bMehpIpViOYmN/nirXVLhiKnbbKb/Y6Hcbf0B4O8lmg==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_common_files/PSGFilter/PSGFilter_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_common_files/PSGFilter/PSGFilter_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_PSGFilter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGFilter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva

# Elaborate design and properties
elaborate -top PSGFilter

# Set up Clocks and Resets
clock clk
reset rst

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
