# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:12:43 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 622448
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35559' '-nowindow' '-style' 'windows' '-data' 'AAABMnicdY7NDsFQEIW/Eo1YeAwLCSGx7NpSicS28dsScW9oCRse1ZvU6Y1KujCT+TtzZnI8IHjmeY6z+kPJJ2Qs/5n3/jaBR9WKuVZFZq9KhUZ5XFJ8RZseJwwRMRl7IV0hS45yw014pv1F2coNZ1K2bISHzMVuir3T5qq+I61TFtqtuDveRBHrW+ou+6pr/YWWrqwQw0HT4A+/0GTVR4ycwqF0JOpSp/4DYm0oBg==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/byteNegator/byteNegator_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/byteNegator/byteNegator_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_byteNegator.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/byteNegator.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva

# Elaborate design and properties
elaborate -top byteNegator

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
