# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-27 16:42:13 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 147342
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41425' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY69CsJAEIS/KAax8BmsBQXBMrVtFME2+BcTCV7QRNFGH9U3OSeHEeIutzc7O3c7HhA8rbW4aD9UfEJmyl947y8IPJpR9a0ms3g1bujUj2uJr9NnxAlDxIGSVMxQzJpMabiJLzW/qOZKw5mCPTvxIUupu1LHmlyFB/I6Z6VZTCJdxEYo485Y3VYIetLn+sVwdLv+lZWP3DFT52qi3YlQ4Rx/AHSlJY4=' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_2d_fht/fht_bfly/fht_bfly_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_2d_fht/fht_bfly/fht_bfly_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_fht_bfly.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_bfly.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -top fht_bfly

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
