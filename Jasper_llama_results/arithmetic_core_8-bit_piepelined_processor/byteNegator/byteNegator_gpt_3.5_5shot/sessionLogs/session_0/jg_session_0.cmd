# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:12:39 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 622345
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33041' '-nowindow' '-style' 'windows' '-data' 'AAABNHicdY7NDsFQEIVPiUYsPIaFhAXprmtLJRLbxm8RcW9oCRse1ZvU1xuVdGEm83fOmcl4ksJnnudyVn+QfEUa4T/z3t8m9FS1Yq5VkemrUqVGuVxKfKKtnk4yipUo0x6kC7LQETe6gWfwF7LFjc5KtdEaPNIMdRP1FuZK3+HXieZwS92dbkwkXEvdZp+64q7UYsuCGB2YBn/0xU+WPtaQ3YAa8MkOLnX/fwCtFSf/' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/byteNegator/byteNegator_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/byteNegator/byteNegator_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_byteNegator.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/byteNegator.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

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
