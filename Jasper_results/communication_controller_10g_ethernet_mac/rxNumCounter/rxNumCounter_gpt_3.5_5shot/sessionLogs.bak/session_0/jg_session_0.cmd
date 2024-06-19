# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 23:12:03 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 327429
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41265' '-nowindow' '-style' 'windows' '-data' 'AAABOHicdY/NDsFQEIW/Eo1YeA6RsKG77iSWSiS2jfgpgttUi9jwqN6kzm1U0oWZ3Pk5c85krgP4zzzPKaz+UHAJGMt/5ry/he9QNdvXqsjsVcnQKMUlxdVr0+OMISQiYy+kK2TJUW64Cc80vyjGckNCyoa18IC52E2xt5pcVXd065SFZgl3JtKcGEljN1hVQl95pc3Qki4WYjioG/5V2Lti1SEDqT1lT9fsxEmLP3wAYeoo7w==' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/rxNumCounter/rxNumCounter_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/rxNumCounter/rxNumCounter_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_rxNumCounter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxNumCounter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -top rxNumCounter

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
