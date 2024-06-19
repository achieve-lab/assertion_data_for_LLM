# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 13:58:15 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 605971
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45353' '-nowindow' '-style' 'windows' '-data' 'AAABKHicZY7NCsJADIS/VSziwWfwLOpFeuvZaxXBa/GvtlLcoq2iF31U36ROixWKCZtMJpNsDOA9i6KgsvZDwcFnJv+ZeX+BZ2haWbeazOLVyNCph2uJo9dnzAlLwIGcWMxQzJpEbrmJz9W/KKZyy5mMPTvxPkupu1KH6lyFB7p1zkq9kEi6gI1Qwp2Jqq0Q9KRPtcVyVDX6U5Z3pBUz1ZSr7Or3SPqsuvkDulElhw==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/fht_bfly/fht_bfly_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/fht_bfly/fht_bfly_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_fht_bfly.tcl'


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
