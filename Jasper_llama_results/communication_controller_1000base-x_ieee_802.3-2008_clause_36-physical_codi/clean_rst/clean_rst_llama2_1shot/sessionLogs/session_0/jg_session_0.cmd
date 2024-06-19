# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:09:36 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 59848
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34245' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY7LCsJADEVPFYu48CNcigq67tptFcFtKVpfaKfUVsGNfqp/Mt4WKwyYkExycjMzHhA8rbXU1n4o+YTM5T/z3t8i8HCt6lsuWb6cEzrNciPxFX3GpBgi9pQcRYYiMWe54S5ean5VzuSGnIKErXjISuqu1DtNbqoH+uuCtWYbbSe6JVWda7tgoqgo9LSRiRpO6kZ/tFH9esxFMVM3FT1IX9S//gAWmCZY' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/clean_rst/clean_rst_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/clean_rst/clean_rst_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_clean_rst.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/clean_rst.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top clean_rst

# Set up Clocks and Resets
clock clk
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
