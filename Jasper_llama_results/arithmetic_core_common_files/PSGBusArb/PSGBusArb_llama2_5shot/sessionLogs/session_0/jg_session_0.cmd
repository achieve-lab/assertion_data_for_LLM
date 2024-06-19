# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:50:30 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 80408
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38475' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY5ND8FAEIafEo04+BGOgoPErRcOHFuRuDb1TbCNtiQu/FT/ZL0alTQxk5mdeT921wG8h7WWPKp3NRefsfIXzus7eA7l+OyVMjJ9lk6oFeZC4qqadDljCNmSsRfSFhJxVBpuwjPxiXqsNFxIWbMS7jOTui71RsxVc0t/DZiLC8RNGMmVMJRnQU++pe6EhhyxMMNBW+ePNsxfjzip+toGYnbSp/mv386lJTg=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGBusArb/PSGBusArb_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGBusArb/PSGBusArb_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_PSGBusArb.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGBusArb.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top PSGBusArb

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
