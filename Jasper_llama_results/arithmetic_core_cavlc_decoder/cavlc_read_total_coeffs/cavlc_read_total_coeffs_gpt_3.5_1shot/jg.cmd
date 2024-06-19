# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 17:41:17 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 791059
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35835' '-nowindow' '-style' 'windows' '-data' 'AAABZHiclY+7CsJAEEVvFINY+CGCgohdsLSwiSLYhhCND8QNeQk2+qn+STxZjJDSGXZ39sydy64jyXtWVSUb3QebK19L8hfO+1t4jtpR3zttsnm1TqnXDDcSlzXUWDcZBTqq0BkygoS6kkZ3eEE/Y09Io1S5DtrDfW1R91HHdErqBW9da0cvwqHEIaJO0Yd2Imc+t961wsBjMtMEGkGlAW4JE0YXbqs/feo/JHQCzfCcc06hJ6uu4wOiJDHb' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cavlc_decoder/cavlc_read_total_coeffs/cavlc_read_total_coeffs_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cavlc_decoder/cavlc_read_total_coeffs/cavlc_read_total_coeffs_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_cavlc_read_total_coeffs.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_read_total_coeffs.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva

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
