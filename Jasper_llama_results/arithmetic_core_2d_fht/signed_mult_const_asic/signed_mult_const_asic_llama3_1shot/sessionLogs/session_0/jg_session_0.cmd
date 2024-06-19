# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 10:49:34 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 45270
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33487' '-nowindow' '-style' 'windows' '-data' 'AAABXniclY/BCsIwEERfFUU8+CGCgnjtudcqgtcSqlalmmJbBS/6qf5JnUYr9Ogu2WRnZieJB/iPqqpw0b2r9AkJlL/wXt+D79GOuu+0keWztUOvGW4kfa0RE85YIhJKDkLGQgyp0nITXorPVTOl5ULBlo3wkJXUA6l3Yq7OOGDBWlwup0RzH+VJ06nmImI51G712ThVzFRdLB6G8sp0g+WoLvjLJXIvNlIZ5upmwvfSFe6nb5NXMVc=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/signed_mult_const_asic/signed_mult_const_asic_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/signed_mult_const_asic/signed_mult_const_asic_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_signed_mult_const_asic.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/signed_mult_const_asic.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

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
