# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:10:04 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 49962
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40605' '-nowindow' '-style' 'windows' '-data' 'AAABSnichY9PD8FAEMV/JRpx8EEkBIlbz64lEnFrqupfsI22hAsf1TepZ6OSnszLzM6+mXk76wDeoygKrNXvCi4+Y+FnzuubeA5V+9xrVWb6rJzQKIfLFlfepssJQ8CGnJ2YjpiQg2C4is9VTxUTwXAmI2Yl3mem7qa616pclA+164S51YoVB/QtltJLxSzEpdykF9GTTqQ3oCWFRLqGvV3u/2xgtws5yoe6jVTZaj6zv3oD83Aq/A==' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_sync/ge_1000baseX_sync_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_sync/ge_1000baseX_sync_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_ge_1000baseX_sync.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ge_1000baseX_sync.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

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
