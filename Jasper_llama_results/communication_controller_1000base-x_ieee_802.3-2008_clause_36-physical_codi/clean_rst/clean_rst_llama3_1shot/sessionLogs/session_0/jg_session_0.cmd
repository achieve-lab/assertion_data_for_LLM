# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:09:45 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 60032
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43965' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY7LCsJADEVPFYu48CNcigritmu3VQS3pWh9oZ1SWwU3+qn+yXhbrDBgQjLJyc3MeEDwtNZSW/uh5BMyl//Me3+LwMO1qm+5ZPlyTug0y43EV/QZk2KI2FNyFBmKxJzlhrt4qflVOZMbcgoStuIhK6m7Uu80uake6K8L1ppttJ3ollR1ru2CiaKi0NNGJmo4qRv90Ub16zEXxUzdVPQgfVH/+gMWqiZZ' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/clean_rst/clean_rst_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/clean_rst/clean_rst_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_clean_rst.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/clean_rst.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top clean_rst

# Set up Clocks and Resets
clock clk
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
