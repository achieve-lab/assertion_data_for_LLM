# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:57:52 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 652439
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36955' '-nowindow' '-style' 'windows' '-data' 'AAABLHicbY67CsJAEEVPFINY+BGWgmkkXWrbKIptWHyLuIsmCjb6qf5JvFmMEHCGnd05c+8yAZA8y7LER/uhEpIyUf4ieH8fSUAzqr7VJLNX44ZOba4loU6fEWcsGTsKDiJDEcNJabmLF5pfVZ3SciFnw1o8ZS51V+qtJje9B9p1ytJ7jFcuVI33R+pW+hN6cjhxy1Fd9Edb7eJEMsaax7pj0b0cud/7A2WSJnc=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/uartTrans/uartTrans_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/uartTrans/uartTrans_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_uartTrans.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/uartTrans.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -top uartTrans

# Set up Clocks and Resets
clock clk
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
