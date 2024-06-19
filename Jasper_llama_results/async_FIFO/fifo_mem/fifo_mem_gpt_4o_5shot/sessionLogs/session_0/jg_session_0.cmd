# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 12:50:26 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 575933
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40525' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY5BD8FAEIW/JRpx8BucJZy49exaInFtBEWjtqElceGn+if1ulHJmsnOzL5582YMED6rqsJZ+6EQEDGT/8y8v0Vo8K3+t3xk8fIydJrhhhLo9RlxxhKzp+QoZChkzUluuQsv1b8q5nLLhYIdW+ERS7G7Yifq3FQPdOuclXqJlBKnmomdMdbURorQEz+XiiV1u/6Z9R252DETh061+6CqcBd/AG/dJXo=' '-proj' '/data/vpulav2/Work/Jasper_corrected/async_FIFO/fifo_mem/fifo_mem_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/async_FIFO/fifo_mem/fifo_mem_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_fifo_mem.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fifo_mem.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva

# Elaborate design and properties
elaborate -top fifo_mem

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
