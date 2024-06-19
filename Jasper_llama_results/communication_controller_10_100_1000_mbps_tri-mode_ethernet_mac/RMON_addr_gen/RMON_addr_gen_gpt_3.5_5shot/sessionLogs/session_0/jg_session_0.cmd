# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 19:11:40 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 881667
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36753' '-nowindow' '-style' 'windows' '-data' 'AAABPHicfY+7CsJAEEVvFINY+CGCNhKr1Ok0PsA2BBNfiBs0UbDRT/VP4kkwwjbOsDu7984Zdh1J/rMsS9XRfrC5ChWQv3De34PvyI7q3rKVxcuqUqeBmxaX1ddQZxlF2qnQAWWAEutEGt3RC/wre0YaXZQrVYIeakV3l+4tzq0mA821xltqij/jFNObQFXzUyaN4DfMlnqQGY7RkdvkD1PVDC7SGN6jerxoD5nX//gAuZQonQ==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/RMON_addr_gen/RMON_addr_gen_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/RMON_addr_gen/RMON_addr_gen_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_RMON_addr_gen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/RMON_addr_gen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -top RMON_addr_gen

# Set up Clocks and Resets
clock Clk
reset Reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
