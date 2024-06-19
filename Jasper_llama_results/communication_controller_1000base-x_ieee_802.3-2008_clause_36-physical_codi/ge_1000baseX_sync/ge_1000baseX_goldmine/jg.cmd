# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-16 15:04:55 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 11928
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38813' '-nowindow' '-style' 'windows' '-data' 'AAABOHicdY5BD8FAEIW/Eo04+CESgnPPriUScROqmkp1G1XChZ/qn9TrRiU9mJednX3z5s06gPcsyxIb7YeSi89M+IXz/haeQzOqd6vJLF6NGzr1cC1xdfoMSTFsiCiIxQzEbEkEw018oX6unAmGMxdC9uJ9llJ3pT6oc1U91V/nrKxXqDxhbLGTXy5mLS7nLr+AkXwC7YCeHDL5Go52+//ZSJpEu0/6Zyquig/3+yeS' '-proj' '/data/vpulav2/Work/Temp_Assertion_Data/verified_assertions/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_sync/ge_1000baseX_goldmine/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Temp_Assertion_Data/verified_assertions/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_sync/ge_1000baseX_goldmine/.tmp/.initCmds.tcl' 'FPV_ge_1000baseX_sync.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ge_1000baseX_sync.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva

# Elaborate design and properties
elaborate -top ge_1000baseX_sync

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
