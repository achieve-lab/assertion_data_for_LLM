# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 17:23:21 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 117451
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46281' '-nowindow' '-style' 'windows' '-data' 'AAABRnicfY+7CsJAEEVvFINY+CGigtgGS9sogm0IMb7QbMhDwUY/1T+JJ4sR0jjD7s7cxzDrSPKeVVXJRvfB5crXkvyF8/4WnqN21H2njaxfrVfqNeZG4nKGmiiRUaCDSp1ARiChLqTRHbyEz7lT0ihToVg7cF8b1H3Ue5gb9ZhdV9rCHVHmKAMmJtaRoQoVUU3pI6ZLA7wpjNGZbvHXFfDGsIHdLNSVM6ebgdW+wv7oA+LgLDM=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_aes128/host_interface_aes/host_interface_aes_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_aes128/host_interface_aes/host_interface_aes_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_host_interface.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/host_interface.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva


# Elaborate design and properties
elaborate -top host_interface_aes

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
