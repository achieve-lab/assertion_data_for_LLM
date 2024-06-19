# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:15:47 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 27671
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41945' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY+7CsJAEEVPFINY+B0iKGid2jaKYBtCfCSibshDMY1+qn8Sr4sRUjjDzs7cxzLrAN6jrmtsdCsVF5+F8hfO69t4Du34zJ02snq2bug15kbi6gyZcMEQcKAkETIWEnJSGm7CS/G5aqo0ZBTs2Ar3WUvdl3ov5qp+pF2XbMTl3OWKiKU36hIquTKmckd6GQbypZY9apr/dQR2k5CzzlzTTMpYisL+4A0xRClK' '-proj' '/home/vpulav2/Work/Jasper_llama/async_FIFO/synchronizer/synchronizer_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/async_FIFO/synchronizer/synchronizer_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_synchronizer.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/synchronizer.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top synchronizer

# Set up Clocks and Resets
clock clk
reset rst_n

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
