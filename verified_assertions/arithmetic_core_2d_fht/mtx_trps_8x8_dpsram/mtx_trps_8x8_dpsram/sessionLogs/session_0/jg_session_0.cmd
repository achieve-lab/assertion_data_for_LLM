# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-22 16:56:15 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 416537
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44279' '-nowindow' '-style' 'windows' '-data' 'AAABOHicjY7PDsFAEMZ/SzTi4DEcJBylh55dSySujShCWttUi7jwqN6kvjYq2ZuZ7Mx8f2Z3DRA8q6qiie5DxSNkrvyFeX+HwOBGjTsus3w5HXrtcmvxdIZMOGOJOFByFDMWsyFRWm7iS+kX1UxpySnYEYsPWcndl3sv5ap5pr8uWEtL5bqrF/Jn2o7whX31uMG5XkiZSt/qHRjolkys5SQ0+nO/jg9/iClm' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_2d_fht/mtx_trps_8x8_dpsram/mtx_trps_8x8_dpsram/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_2d_fht/mtx_trps_8x8_dpsram/mtx_trps_8x8_dpsram/.tmp/.initCmds.tcl' 'FPV_mtx_trps_8x8_dpsram.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/mtx_trps_8x8_dpsram.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top mtx_trps_8x8_dpsram

# Set up Clocks and Resets
clock sclk
reset rstn

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
