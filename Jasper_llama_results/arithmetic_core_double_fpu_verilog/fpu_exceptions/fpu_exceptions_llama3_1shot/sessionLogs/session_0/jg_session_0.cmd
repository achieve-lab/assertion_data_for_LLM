# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 19:50:32 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 149571
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:32775' '-nowindow' '-style' 'windows' '-data' 'AAABPnicfY/NCoJQEIXPLZJo0YNEBRG0ct3WImgrYlZKdaW0ok09am9in5KBm2a483POnGGukeQ+i6JQZe0HwZGnOf4z8/4WrlHTyr7VRJavRpY6tbgecXh9jXSSla+dcsUgA5BAB9zqBp7DX4gpbnVWpkgbcE8rprtMb2Gu1ENuXWgNVyI5OdJdITFFFaMuN42pQ7ZLPbQpG60SutlflV9dFOjIm9JNwPZwWfWTD4hNKs8=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_double_fpu_verilog/fpu_exceptions/fpu_exceptions_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_double_fpu_verilog/fpu_exceptions/fpu_exceptions_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_fpu_exceptions.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fpu_exceptions.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top fpu_exceptions

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
