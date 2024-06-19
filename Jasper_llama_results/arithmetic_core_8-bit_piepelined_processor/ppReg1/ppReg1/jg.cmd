# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-26 17:15:00 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 69907
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43159' '-nowindow' '-style' 'windows' '-data' 'AAABBHicVY5NCsIwEIW/KBYR8QSeQFBw37Xb+gNuRawWi5jSWgU3elRvEl/EFvKGTGbefBNigPjlnOOn7lMpImGhaGU+/yI2hPJ9J3RW7+CGXrPcIJHOiClXLDsyas5yJnL2XBSWh/xa80q5UFhKbhxJ5SdsRPdFnzS5qx7rr0u2mnl2LS5jzkwbB70GA7GFXrDk6oYB5fUFrXAeNA==' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_8-bit_piepelined_processor/ppReg1/ppReg1/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_8-bit_piepelined_processor/ppReg1/ppReg1/.tmp/.initCmds.tcl' 'FPV_ppReg1.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ppReg1.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top ppReg1

# Set up Clocks and Resets
clock clk
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


