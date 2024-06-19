# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 12:16:17 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 126007
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42473' '-nowindow' '-style' 'windows' '-data' 'AAABOHicdY/LCoJQEIY/iyRa9BwR1KbcuW5rEbSVsItKdMRLkZt61N7EfiUDF81wZub8l8McC3CfVVXRRL9UsfFYKX9hvb+Da9GN+t7rIptXp8OgNbcSW2fMjCsGnzMFkZCpkD0XpeEuvBCfqSZKQ0rOkYNwj63UQ6lPYm6aJ9p1zU5cxkOugFB6oymilCtlLnegl2EkX9KwsW7Lv456r0Qun4XcjrojbShN3vzhA3/WKVc=' '-proj' '/data/vpulav2/Work/Jasper/async_FIFO/synchronizer/synchronizer_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/async_FIFO/synchronizer/synchronizer_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_synchronizer.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/synchronizer.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -top synchronizer

# Set up Clocks and Resets
clock clk
reset rst_n

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
