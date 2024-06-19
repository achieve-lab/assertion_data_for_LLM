# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 15:25:21 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 685755
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34937' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY69CsJAEIS/Uwxi4SNYi6AgWKa2jSLYhhCNRiQXNFGw0Uf1TeLkMELc5fZndnZvDOA/q6rCWfeh4BGwlP/MvL+Fb2hb3XfayPrVytBrlhuKpzdkSoYl5EBJKmQiJOIst9yFl5pfFXO55ULBnp3wgI3YfbETTW6qR9K6YqtZrAuZcqQqYaadWPdgIHauG5aTuvEfr9aQixuycIrm+veoqnBqP8PIJGQ=' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_acf/can_acf_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_acf/can_acf_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_can_acf.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_acf.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva

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
