# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 17:36:21 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 788857
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43611' '-nowindow' '-style' 'windows' '-data' 'AAABYniclY/LCsIwEEVvFUVc+CGCrnRXXIq7KoLbUqr1gZjSl+BGP9U/qSfBCl06Q5LJmTuXxJPkP+u6lovug62vQEvyF977W/ie2mHvnTbZvFqn1GuGG0mfNdJENxmFOqrUGTKGRLqSRnd4ST9nT0mjTIUO2sMDbVEPUCd0KuoFb11rRy/GocIhps7QR26iYL5w3lZh4AmZawqNodIQt5QJowu31Z8+9g8pnVAz96M57OS0Nj5D/DHq' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cavlc_decoder/cavlc_read_total_coeffs/cavlc_read_total_coeffs_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cavlc_decoder/cavlc_read_total_coeffs/cavlc_read_total_coeffs_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_cavlc_read_total_coeffs.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_read_total_coeffs.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva

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
