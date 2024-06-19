# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:39:44 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 848871
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34895' '-nowindow' '-style' 'windows' '-data' 'AAABJHicVY5LCsJAEETfKAZx4RE8gKAg4i5rt1EEtyFE4wfJBE0U3OhRvUmsDEaYbqa7p6r6Y4DwVdc1zrpPhYCIpfxv5vMrQoNvzb/jI+u3l6HXNreSQG/IhBxLzIGKk5CxkISL3PIQXom/KRZyy5WSPTvhERup+1JnYu6qR7p1xVZcqgm5cqIqY6qeVPNgIHWhGZaz2+TrmhsKaWPm6lkoz7T5KHXp7v0CBvMkWQ==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_acf/can_acf_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_acf/can_acf_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_can_acf.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_acf.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva

# Elaborate design and properties
elaborate -top can_acf

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
