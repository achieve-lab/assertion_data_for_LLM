# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:24:44 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 29206
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46461' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY9NC4JAEIZfiyQ69DsiKMiz525hEXQVyT4Ma8XWii71U/sn9iQZeGiGnZ15P5ZZR5L/KMtSVbTvFFeBpuQvnNe38R014zO3msji2bilTm2uJS6nr5FOMgq1U6EEZAgSKSWNruAF/JmakUa5rDaKwQMtUXdRb2Eu9AN2nWsFl+sGa3nHaoYrxp/iGzOv6aQevgyd0YHJ++sIq00iHTke04Rd9vC2+sEbDmwoxg==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxStatModule/rxStatModule_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxStatModule/rxStatModule_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_rxStatModule.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxStatModule.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top rxStatModule

# Set up Clocks and Resets
clock rxclk
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
