# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-22 22:25:23 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 10353
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38971' '-nowindow' '-style' 'windows' '-data' 'AAABFHicbY7BDsFQFERPiUYsrHyClYQvsLYtkdg2oggRbVASGz7Vn9SpqKSJmbz77p078/ICYPwoioIPmndLSMRE/hC8vs04oI5ybtSV2bN2Q6sKV5bQ02XIkZSYLTk7lYHKkoNMuann7s/WTKacuLAmUY+Y627r3ri52vf965SFu43+8oXYlxK5NjcyuVKDjplMJWXv1PvrLvEG4xgiCg==' '-proj' '/data/vpulav2/Work/Jasper/full_adder/full_adder/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/full_adder/full_adder/.tmp/.initCmds.tcl' 'FPV_full_adder.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/full_adder.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top full_adder

# Set up Clocks and Resets
clock -infer
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
