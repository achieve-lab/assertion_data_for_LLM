# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:15:51 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 27889
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34367' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY+7CsJAEEVPFINY+B0iaBGwS20bRbANIT6iqBvyUEyjn+qfxOtihBTOsLMz97HMOoD/qOsaG91KxSVgrvyF8/o2vkM7PnOnjSyfrRt6jbmRuDpDJlwwhOwpOQgZC4k4KQ034aX4XDVVGjIKtmyEB6yk7ku9E3NVP9KuC9bicu5yxSTSG3UHKrkypnLHehkG8qWWPWry/jpCu0nEWcfTNJMykaKwP3gDMXwpTg==' '-proj' '/home/vpulav2/Work/Jasper_llama/async_FIFO/synchronizer/synchronizer_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/async_FIFO/synchronizer/synchronizer_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_synchronizer.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/synchronizer.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top synchronizer

# Set up Clocks and Resets
clock clk
reset rst_n

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
