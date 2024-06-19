# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 20:46:09 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 74953
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41693' '-nowindow' '-style' 'windows' '-data' 'AAABQnichY+7CsJAEEVvFINY+CGCAa0sUmuZSMA2LBpfqBs0UbDRT/VP4nExQipn2Nm9jxlmPUnho6oquWjfKb4iTclfeK/vI/TUjA9uNZn5s3FLnbq5tvicvoY6ySrVRqV2MAMYowNpdYMv0S/UnLQ6q1CmFXykBHcX9xrlyjtg11gLtBhthqPEnbuaUI9kxoQAvGS+1KM7h7HagyZ/+lK3lQEZjUEj9trSW7jfvAH/eSri' '-proj' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGOutputSummer/PSGOutputSummer_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGOutputSummer/PSGOutputSummer_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_PSGOutputSummer.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGOutputSummer.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top PSGOutputSummer

# Set up Clocks and Resets
clock clk_i
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
