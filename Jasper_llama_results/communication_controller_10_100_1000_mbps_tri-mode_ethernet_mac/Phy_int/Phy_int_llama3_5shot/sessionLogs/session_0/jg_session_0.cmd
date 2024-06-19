# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 13:22:52 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 44334
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35033' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7LDsFQEIa/Eo1YeARrkbARu65tW5HYNo1bKzgNp4QNj+pN6neikprJ3P755+IBwaMsS5w073I+IVPpT7zXNwk86vKpG3Vk9qxFaFXDFcWXdRlyxBCzpSATMhCSsJcarsIL9c/yudRwwrJmJTxkLnZb7I06F+U9/RqxUC8i5aaYadYyki21Dzpi59ph2Knq//FidzXhIBurmuhuKq51374Bz7wklQ==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/Phy_int/Phy_int_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/Phy_int/Phy_int_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_Phy_int.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/Phy_int.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva

# Elaborate design and properties
elaborate -top Phy_int

# Set up Clocks and Resets
clock MAC_rx_clk
reset Reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
