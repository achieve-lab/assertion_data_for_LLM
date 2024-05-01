# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-24 19:37:07 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 6999
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38597' '-nowindow' '-style' 'windows' '-data' 'AAABRHiclY3NDsFAFIW/Eo1YeBDBE3TdbYnEtmmKhpRpVElseFRvMs6USmbp3syduedvAiB6WGtpq3/XCEmI1b8KXt9HFOCX23s+snx6Nww6cycJdcbMOGFIKWjYC5kIySjVhpvwRnytWakNZy5s2QhPWEk9lHon5toGxyxYi6uVVMj3UR7lLuVLyZXg0tw7a1U5c225eBgpq9IPhoO26V8prt6yzCxW' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_2d_fht/signed_mult_const_asic/signed_mult_const_asic/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_2d_fht/signed_mult_const_asic/signed_mult_const_asic/.tmp/.initCmds.tcl' 'FPV_signed_mult_const_asic.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/signed_mult_const_asic.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top signed_mult_const_asic

# Set up Clocks and Resets
clock clk
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
