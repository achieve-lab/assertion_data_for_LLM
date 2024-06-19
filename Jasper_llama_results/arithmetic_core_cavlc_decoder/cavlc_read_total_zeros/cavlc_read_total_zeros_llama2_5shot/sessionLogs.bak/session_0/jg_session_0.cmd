# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 18:27:44 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 135927
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35437' '-nowindow' '-style' 'windows' '-data' 'AAABXniclY67CsJAEEVPFINY+CGCFoKdddoogm0I8Y2akJeQRj/VP4k3gxFSOsPO7py5c1kHWD7rusaiX6m4+HjKXzjv72Pp0I2m73XJ+tW5YdAutxJXZ8yUOzEBRwrOIhORkKsy5iFeaJ6pJsqYlJw9O3GfjdRDqQ+alGbssWKrWSSHUg6R3qn0oW3k2s/NO6ASTdVnzMQiMRjJKzF6Uef95RLYj0NuOnN1C7GTKZv4AIeHMUw=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_read_total_zeros/cavlc_read_total_zeros_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_read_total_zeros/cavlc_read_total_zeros_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_cavlc_read_total_zeros.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_read_total_zeros.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top cavlc_read_total_zeros

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
