# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-26 15:36:04 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 67153
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46265' '-nowindow' '-style' 'windows' '-data' 'AAABInicbY7BCsIwEERfFYt48CPEk6Bf0LPXKopXCVZFqU1Rq+BFP9U/iZNghYKzZLM7O5NsBCRP5xwB7YdSTMpU8UP0/hZJRBO+bzWZ+atxQ6c215JYp8+YAsuaPRUHMSMxhlxhuYuvNL8olwrLmStbMvEpC6m7Uu80uakeaNcZq+AxQblUNsE/UbfRm9CToxRvOaob/tH6Xay0GSdtVOg/jw/qxCUq' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_8-bit_piepelined_processor/uartTrans/uartTrans_goldmine/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_8-bit_piepelined_processor/uartTrans/uartTrans_goldmine/.tmp/.initCmds.tcl' 'FPV_uartTrans.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/uartTrans.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva

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
