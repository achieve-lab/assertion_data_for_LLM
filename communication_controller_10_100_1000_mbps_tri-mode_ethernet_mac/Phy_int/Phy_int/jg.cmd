# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-24 15:03:53 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 110217
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44991' '-nowindow' '-style' 'windows' '-data' 'AAABCHicVY5LCsJAEETfKAbJwiPkAIKeIGu3iQhuRfxGJBNioujGHNWbjJVghKmmP1Nd3T0GiN/OOToMXwoBCQvZH+bzK2KDj/Y98Jll42UY9cO9JJBPmJFj2XCiJhMzFbPlKrM8xNfq3xQLmaWk4sBefMJK6rHUR3XuqiP9NWWtXsqZp3Km2Yq5fKd9EEpdaIfl0t32dS2+Pj8fkA==' '-proj' '/data/vpulav2/Work/Jasper/Phy_int/Phy_int/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/Phy_int/Phy_int/.tmp/.initCmds.tcl' 'FPV_Phy_int.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/Phy_int.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

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
