# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 12:40:31 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 160633
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36463' '-nowindow' '-style' 'windows' '-data' 'AAABJHicVY5LCsJAEERrFIO48AgeQNCNZJe12yiC2xCi8YNkBk0U3OhRvUl8CUaYbqa7p6r6YyRFr7qu1Vr/SQgUa4n/zXx+RWTkW/Pv+cj67WVp0DV3koA31kyFrBIdVOkEMgVJdcGtHuAV/I3ocKurSu21A4+1QT1EncPcqSfcutIWLmNCQU6pcs3pyZgnjVA7Zlid202+rrnBoU20oCckh2w+oi7be78HKyRd' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_acf/can_acf_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_acf/can_acf_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_can_acf.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_acf.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -top can_acf

# Set up Clocks and Resets
clock clk
reset rst

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
