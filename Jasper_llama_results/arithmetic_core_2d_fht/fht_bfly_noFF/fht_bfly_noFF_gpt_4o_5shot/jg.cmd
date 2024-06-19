# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 13:57:21 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 605498
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45879' '-nowindow' '-style' 'windows' '-data' 'AAABOnicfY+9CsJAEIS/KAax8EEErWKXOm0UwTb4F6MEL2iiaKOP6pvEucMIadzl9mZnZ+92PSB81nWNs+5DwScmkv/Me39B6NE2m3fazPzVuqHXNDcSX2fImBOGhD0VBzEjMStyueEmvlL9oljIDWdKdmzFxyyk7kudqnJ1nREzlqqlZNIlrIVy7kL2D7vLRPxGHAzUWeg9w1FZ8KfHzla4WuAmnWqeTKh0W3wAoTQpNg==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/fht_bfly_noFF/fht_bfly_noFF_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/fht_bfly_noFF/fht_bfly_noFF_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_fht_bfly_noFF.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_bfly_noFF.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva

# Elaborate design and properties
elaborate -top fht_bfly_noFF

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
