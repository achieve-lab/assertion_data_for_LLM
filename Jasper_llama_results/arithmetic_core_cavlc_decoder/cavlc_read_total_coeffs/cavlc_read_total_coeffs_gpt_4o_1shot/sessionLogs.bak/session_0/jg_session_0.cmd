# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 17:36:16 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 788538
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40363' '-nowindow' '-style' 'windows' '-data' 'AAABYniclY/LCsIwEEVvFUVc+CGCguCyuBR3VQS3pVTrAzGlL8GNfqp/Uk+CFbp0hiSTM3cuiSfJf9Z1LRfdB1tfgZbkL7z3t/A9tcPeO22yebVOqdcMN5I+a6SJbjIKdVSpM2QMiXQlje7wkn7OnpJGmQodtIcH2qIeoE7oVNQL3rrWjl6MQ4VDTJ2hj9xEwXzhvK3CwBMy1xQaQ6UhbikTRhduqz997B9SOqHm7kcz2MlpbXwAQ8Qx5g==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cavlc_decoder/cavlc_read_total_coeffs/cavlc_read_total_coeffs_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cavlc_decoder/cavlc_read_total_coeffs/cavlc_read_total_coeffs_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_cavlc_read_total_coeffs.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_read_total_coeffs.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva

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
