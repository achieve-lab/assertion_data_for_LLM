# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 15:41:46 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 709784
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42249' '-nowindow' '-style' 'windows' '-data' 'AAABKHicZY7NDsFQEIW/Eo1YeAZrwUa6605iWyKxbYRSP3GbahEbHtWbXKeNShozufNzzpm54wD+01pLac2HgkvAVP4z5/0tfIe6FX2jjsxftQytariSuHpdhpwxhOzI2QvpC1lxkhtuwnPxF8VEbkjJiNgID1hI3ZZ6K+aquqdbZyzFpdyZaMNRWyPNjzS1Vg8d6RPxhoO6wZ+yuCOROmSsKU/Z0++x9Fl58wezlSVn' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10g_ethernet_mac/rxClkgen/rxClkgen_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10g_ethernet_mac/rxClkgen/rxClkgen_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_rxClkgen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxClkgen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

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
