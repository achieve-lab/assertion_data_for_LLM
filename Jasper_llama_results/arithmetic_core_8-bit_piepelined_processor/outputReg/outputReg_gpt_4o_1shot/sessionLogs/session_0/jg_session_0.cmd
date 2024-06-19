# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:38:47 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 638423
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41017' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY7NCsIwEIS/KBbx4EN4FBUEjz17rT/gtYg/rSKmaKvgRR/VN6mTYIWCu2QzOzubjAHCZ1mW+Gg+VAIipspfmPcXhIZ6uL5RZ+av2g2tarmSBDpdhpyxxCQUHMT0xaw5KS138YXmV9VMabmQs2MrPmIpdVvqvSY34Z68zlhpZqXPxbq6kD5hJLTRm9DRRqZ3LEd1gz9a5yVTFzPxzsb6PxXKvesPJYImlA==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/outputReg/outputReg_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/outputReg/outputReg_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_outputReg.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/outputReg.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva

# Elaborate design and properties
elaborate -top outputReg

# Set up Clocks and Resets
clock -infer
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
