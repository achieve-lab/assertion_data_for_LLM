# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 15:39:57 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 706133
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42745' '-nowindow' '-style' 'windows' '-data' 'AAABNHicdY69CsJAEIS/KAax8DEsBC2UdKltowi2IZz/ihdiomCjj+qbxLlghBTucju7szPHekD4LMuSKtoPFZ+ImfIX3vvbhB7NcHOrySxeDYROba4lvl6fERcsMTsKDmKGYhLOSstdfKH9VTVVWjJyNqzFRyyl7kq91eamfqBb56y0SzCchEYO53eejLHQ6F/oyZWKsRw1Tf7o3U2p+pipvIEw0CV7afLq/g+wqSgT' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10g_ethernet_mac/ack_counter/ack_counter_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10g_ethernet_mac/ack_counter/ack_counter_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_ack_counter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ack_counter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -top ack_counter

# Set up Clocks and Resets
clock clock
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
