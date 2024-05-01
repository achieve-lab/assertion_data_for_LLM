# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-23 23:13:28 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 43317
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39363' '-nowindow' '-style' 'windows' '-data' 'AAABEHicbY7LCoJAGIW/SZJo0aJHaBnUE7huayG0jbCMIhyxTHBTj9qbTMdIYaDzM//lXGAMED2dc3wRNGohMStVD/P+LZHBR3sPfGbz8iYMu3BnCfUmLMix7DhRcRYzF7PnqrLU4ivpN/VCZSm5c+QgPiaReyR3JuWhfaa/rtlKy/p0Kn+pa6mZasJYiUKc5aJr+sfb4gNcqiF6' '-proj' '/data/vpulav2/Work/Jasper/flow_ctrl/flow_ctrl/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/flow_ctrl/flow_ctrl/.tmp/.initCmds.tcl' 'FPV_flow_ctrl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/flow_ctrl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top flow_ctrl 

# Set up Clocks and Resets
clock Clk
reset Reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
