# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 10:45:40 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 42586
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39299' '-nowindow' '-style' 'windows' '-data' 'AAABUnicjY+7CsJAEEVvFINY+CGCFoKSIoWVbRTBNgTjE+OGmKjY6Kf6J/FkUSGdM+zO3Mfsw5HkP8qylI3mnc1VoCn5C+f1aXxH9ahwo87Mn7Uqtb7DX4vL6qqvk4xCbVVoD9ODiXQkja7wBfqZPSWNMuVaK4YPtMDdxr1BudCPeetMS7QE142a40+ZDuWBPWpsccYNiQboK+6ROpySwhodQJM/50P7yqqLNASNUHackdvfvQETPS5q' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/mtx_trps_8x8_dpsram/mtx_trps_8x8_dpsram_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/mtx_trps_8x8_dpsram/mtx_trps_8x8_dpsram_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_mtx_trps_8x8_dpsram.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/mtx_trps_8x8_dpsram.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

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
