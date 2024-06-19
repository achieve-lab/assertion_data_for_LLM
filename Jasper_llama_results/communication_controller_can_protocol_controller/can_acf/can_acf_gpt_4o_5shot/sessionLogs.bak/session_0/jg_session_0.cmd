# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 15:25:25 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 686033
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44863' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY69CsJAEIS/Uwxi4SNYi6CVdqltowi2IUSjEckFTRRs9FF9kzg5jBB3uf2Znd0bA/jPqqpw1n0oeAQs5T8z72/hG9pW9502sn61MvSa5Ybi6Q2ZkmEJOVCSCpkIiTjLLXfhpeZXxVxuuVCwZyc8YCN2X+xEk5vqkbSu2GoW60KmHKlKmGkn1j0YiJ3rhuWkbvzHqzXk4obMnaKF/j2qKpzaD8QAJGg=' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_acf/can_acf_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_acf/can_acf_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_can_acf.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_acf.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva

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
