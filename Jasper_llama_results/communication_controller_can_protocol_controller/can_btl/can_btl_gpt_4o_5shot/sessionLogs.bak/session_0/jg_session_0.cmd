# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 15:23:33 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 683210
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40307' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY69CsJAEIS/KAax8BGsRdBKu9S2UQTboPEnSsgdmijY6KP6JnFyGCHucrtzs3N74wHBsyxLXLQfKj4hc+UvvPcXBB7NqO6tJrN8NTp06se1xNfpMybDEHGk4CRmJGZDqjTcxReaX1Wt0nAhZ89OfMhK6q7UB01uwgN5XbDWLNaGTH0rdcpENVaHntRWOwxn3YZ/usqDFYqYOkcz/ZsI5c7tB84MJJg=' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_btl/can_btl_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_btl/can_btl_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_can_btl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_btl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva

# Elaborate design and properties
elaborate -top can_btl

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
