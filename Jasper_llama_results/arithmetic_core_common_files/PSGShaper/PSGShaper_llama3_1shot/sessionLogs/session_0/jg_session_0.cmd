# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 19:44:03 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 145831
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36633' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY7NCsJADISnikU8+BAeRQXx2rMeWxG8luJfFXVLbRW86KP6JuvnYoWCCckmM5NkPUnBw1orZ807yVeoKf4z7/UtAk91+/SNOjJ/1l6pVQ1XEp/oaqizjGLtVGoP0gdJdMSNbuAl/IWc4Ua5Cm20Bg+1QN1GvYW5Uvf4a6QlXAQ3I1I2ZehzjZhbsVPqMJGBGB3oBn+0sbue6ERM6MbcT9EX7tdv3p8lfQ==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGShaper/PSGShaper_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGShaper/PSGShaper_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_PSGShaper.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGShaper.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

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
