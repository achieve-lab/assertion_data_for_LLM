# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-24 12:19:23 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 64200
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45493' '-nowindow' '-style' 'windows' '-data' 'AAABIHicfYxNCsIwEIW/KBZx4QE8gqAn6Lo7rT/gVoqtoogpahXc6FG9SXwpVsjGN2Qy837GAPHTOUeN9kMtIiVR/WDe3yE2hPB7K2Tmr+CHThNuLJFenxEnLGt2VOzFDMVkHFWWu/hK+kW9VFnOXCnIxacs5e7KvZVyq5MJM1bSFkykTzVl8uZK+fuFLo2V3+g29JQspVgO2gZ/Mh4fcfgjkA==' '-proj' '/data/vpulav2/Work/Jasper/RMON_addr_gen/RMON_addr_gen/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/RMON_addr_gen/RMON_addr_gen/.tmp/.initCmds.tcl' 'FPV_RMON_addr_gen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/RMON_addr_gen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top RMON_addr_gen

# Set up Clocks and Resets
clock Clk
reset Reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
