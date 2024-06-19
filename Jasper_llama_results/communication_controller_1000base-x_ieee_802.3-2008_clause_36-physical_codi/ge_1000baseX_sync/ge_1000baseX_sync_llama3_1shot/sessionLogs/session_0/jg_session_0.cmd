# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:10:08 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 50051
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39479' '-nowindow' '-style' 'windows' '-data' 'AAABSnichY/NCsJADIS/Khbx4IMIij/Xnr1WEcRbqbX+oW6xraIXfVTfpI6LFXoyIdnsZDKbdQDvURQF1up3JRefsfxnzutbeA5V+9xrVWT6rJzQKIdLiqto0+WEIWBDzk5IR0jIQW64Cs/VT5UTueFMRsxKuM9M7KbYa3UuqofadcLcasXKA/rWl9JLhSyEpdykF9GTTqQ3oCWFRLqGvV3u/2xgtws5KkaWm7LVfGZ/9QbzSir5' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_sync/ge_1000baseX_sync_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_sync/ge_1000baseX_sync_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_ge_1000baseX_sync.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ge_1000baseX_sync.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

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
