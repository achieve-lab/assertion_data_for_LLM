# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 19:45:44 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 146666
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36699' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY/NCsJADIRnFYt48DlEUFCvPXutIngt9V9Rt6xtBS/6qL5J/Vqs0IMJSTaTmZA1kvxnnucqrfkgeQo0xX9m3t+Hb1S3om/UkfmrVqVWJa4oHtHVQFdZhdor1RGkDxLpjFvdwVPmN3KMWzkl2moDHmgBuw17xyTj3ePWmZbMVmxKqA5uRjg2FDuHoGuq1EEXg1ud6MZ/FWF5SaQLMaEbgR9QJeUPPhiqKPM=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_crcahb/bit_reversal/bit_reversal_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_crcahb/bit_reversal/bit_reversal_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_bit_reversal.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/bit_reversal.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top bit_reversal

# Set up Clocks and Resets
clock -infer
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
