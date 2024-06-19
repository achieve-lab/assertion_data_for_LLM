# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 19:43:59 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 145761
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34657' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY7NCsJADISnikU8+BAeRT0I3nrWYyuC11L8q6Juqa2CF31U32T9XKxQMCHZZGaSrCcpeFhr5ax5J/kKNcV/5r2+ReCpbp++UUfmz9ortarhSuITXQ11llGsnUrtQfogiY640Q28hL+QM9woV6GN1uChFqjbqLcwV+oef420hIvgZkTKpgx9rhFzK3ZKHSYyEKMD3eCPNnbXE52IMd2E+yn6wv36Dd7FJYA=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGShaper/PSGShaper_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGShaper/PSGShaper_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_PSGShaper.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGShaper.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top PSGShaper

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
