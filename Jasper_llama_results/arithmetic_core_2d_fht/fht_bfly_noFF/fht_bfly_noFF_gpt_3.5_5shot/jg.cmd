# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 13:57:12 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 605032
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33765' '-nowindow' '-style' 'windows' '-data' 'AAABPHicfY+9CsJAEIS/KAax8EEEbSRWqdNGEWyD/1GCFzRRtNFH9U3i3GGENO5yu3szO3e7HhA+q6rCWfuh4BMTyX/mvb9F6NE0e281kdmrkaFTi+sWX6fPkBOGhD0lByEDIUsyueEmvBR/UczlhjMFWzbCY+bq7qp7J+bqlBFTFuJ2pOpLWKnKuKuyf9hdRsLXwqAnZa73DEfdJn80drbccWPpA+VAE6ViC7fHB+4EKSs=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/fht_bfly_noFF/fht_bfly_noFF_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/fht_bfly_noFF/fht_bfly_noFF_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_fht_bfly_noFF.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_bfly_noFF.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -top fht_bfly_noFF

# Set up Clocks and Resets
clock clk
reset rstn

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report

exit
