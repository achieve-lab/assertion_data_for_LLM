# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 17:20:40 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 116477
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42669' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY7NCsIwEIS/KBbx4EN4FBXEa89eqyheS/CvipqirYIXfVTfpI7BCgV32c3O7EwSA4SPoijwUb+rBUSMlb8wr+8QGqrxwbUqM31WTmiU5lISqNr0OeGI2ZKzE9MVYzkoHTfxufYX9VTpOJOxZiU+YiZ1U+qNNlfNHf11wsJ7rFfO1a33D4SWuhNacqTiHXuh3h9t7F+3HFUjoaG4RPrM//oNHN4maw==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/uartTrans/uartTrans_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/uartTrans/uartTrans_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_uartTrans.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/uartTrans.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

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
