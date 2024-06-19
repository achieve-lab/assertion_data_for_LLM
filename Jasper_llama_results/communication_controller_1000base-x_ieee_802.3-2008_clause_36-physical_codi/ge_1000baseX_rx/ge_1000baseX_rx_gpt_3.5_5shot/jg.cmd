# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 19:46:44 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 917586
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34429' '-nowindow' '-style' 'windows' '-data' 'AAABRHichY/JCsJAEERfFIN48EMERZFcJGevUQTxFtwXxAlZVLzop/onsTIYISe7mO6e6q5ixgH8Z57n2Kg/lFwCxsIvnPe38R2qUdxrVWb6qlRolOJyxdVp0+WCIWRPxlFMR8ySs2C4ic80T5QjwRCTsmUjPmCm7aa2d5pc1ff01glz67VVHtC3WMkvEbMQF3PXXspa/tCSOhJnOOk2+qMrfCNpQ4by8FQ9zQ9Sp/Y/H9aTKVc=' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_rx/ge_1000baseX_rx_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_rx/ge_1000baseX_rx_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_ge_1000baseX_rx.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ge_1000baseX_rx.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -top ge_1000baseX_rx

# Set up Clocks and Resets
clock ck
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
