# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 17:37:50 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 299035
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39377' '-nowindow' '-style' 'windows' '-data' 'AAABZnicrY+7CsJAEEXPKkqw8BusBQXBMp1gG0WwDaLxjRtiomKjn+qfxJvFCLF2hp2duXPnZQD/kec5Tup3mSYBY+lXzOvj+IaqFHGtikyflR8aZXFJ8fTa9DhhCdmQsRPSFbLgKLVchWfKn2VjqSUhJWIlPGD2h3pP7LUyF/kd3TphrlzCjZE6HNQ1Un1fVUvF0BI/Vt6yd7N+mcUesdghQ7fVQLO38lJ38Rub2DDL' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/rxClkgen/rxClkgen_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/rxClkgen/rxClkgen_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_rxClkgen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxClkgen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva

# Elaborate design and properties
elaborate -top rxClkgen

# Set up Clocks and Resets
clock rxclk_in
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
