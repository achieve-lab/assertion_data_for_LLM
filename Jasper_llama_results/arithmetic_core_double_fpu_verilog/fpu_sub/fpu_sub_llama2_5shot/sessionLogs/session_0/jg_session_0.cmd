# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 19:53:52 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 150266
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37443' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY67CsJAEEVPFINY+AnWImgh2KW2jSLYhvhW1A2aVbDRT/VP1rvBCHGGed258wiA6Omco5D6Qy4kZiz9SfD+JlFAVXxdqyLTVyVCoxwuKaGsTZ8zhoQtlr2QnpCUo9RwF27Vv8pnUsOFnDUr4TEzsZtib9S5Ke/o1wlz9TxiFf3cgoFmltoHLbEz7TAcVHX/eElxNeUkG6oaCd+JmxfffgDcriTG' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_double_fpu_verilog/fpu_sub/fpu_sub_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_double_fpu_verilog/fpu_sub/fpu_sub_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_fpu_sub.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fpu_sub.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top fpu_sub

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
