# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 13:20:18 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 42947
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38155' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7LDsFQEIa/Eo1YeARrkZCw7tq2FYlt07i1gtNwStjwqN6kficqqZnM7Z9/Lh4QPMqyxEnzLucTMpX+xHt9k8CjLp+6UUdmz1qEVjVcUXxZlyFHDDFbCjIhAyEJe6nhKrxQ/yyfSw0nLGtWwkPmYrfF3qhzUd7TrxEL9SJSboqZZi0j2VL7oCN2rh2Gnar+Hy92VxMOsomqse6m4lr37RvPciSQ' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/Phy_int/Phy_int_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/Phy_int/Phy_int_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_Phy_int.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/Phy_int.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

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
