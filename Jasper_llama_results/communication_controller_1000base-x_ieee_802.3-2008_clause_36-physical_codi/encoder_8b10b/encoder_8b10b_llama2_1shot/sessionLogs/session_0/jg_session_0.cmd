# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 22:35:24 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 93610
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40385' '-nowindow' '-style' 'windows' '-data' 'AAABOnicfY/LCoJQEIY/iyRa9CBBkdGihWu3FkFbMbUb1RHTgjb1qL2J/UkGbprhzJn5L4c5FuA+yrKkivZdxcbHU/7Cen0b16IZn7nVRBbPxg2d2lxLbJ0+Q84YArYU7IUMhIQclYab8EL8RTVVGjJyEmLhPkupu1JvxFwrp8eclbhEnkjqWF2mecYah7HqSP5Ib0NPzlSs4aBp+scTVNuEnHQmmhzts5Myr37xBmJSKCo=' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/encoder_8b10b/encoder_8b10b_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/encoder_8b10b/encoder_8b10b_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_encoder_8b10b.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/encoder_8b10b.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top encoder_8b10b

# Set up Clocks and Resets
clock SBYTECLK
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
