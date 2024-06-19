# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 17:41:22 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 791369
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46199' '-nowindow' '-style' 'windows' '-data' 'AAABZHiclY+7CsJAEEVvFINY+CGCNpIuWFrYRBFsQ4jGB+KGvAQb/VT/JJ4NRkjpDLs7e+bOZdeR5D/rulYT/Qebq0BL8hfO+1v4jrph770u2bw6pzRoh1uJyxprqpuMQh1V6gyZQCJdSaM7vKSfs6ekUaZCB+3hgbaoh6gTOhX1greutaMX41DhEFNn6KNmomC+aLytwsATMtcMGkOlEW4pE0YXbqs/fewfUjqh5nh6nB701KhtfACiXDHf' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cavlc_decoder/cavlc_read_total_coeffs/cavlc_read_total_coeffs_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cavlc_decoder/cavlc_read_total_coeffs/cavlc_read_total_coeffs_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_cavlc_read_total_coeffs.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_read_total_coeffs.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -top cavlc_read_total_coeffs

# Set up Clocks and Resets
clock clk
reset rst_n

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
