# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-28 16:23:57 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 53582
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45687' '-nowindow' '-style' 'windows' '-data' 'AAABGHicdY5LDgFREEVPEyIGhpZgIGEFxqZNJKYifiHoTn9ITFiqnbTTgqQHbuVV3bp1q/ICYHQvioI36jdTk5Cx8UPw/JBRQBVlX6sq00elQuO7/LU0fR0GnIlYsCNnr9JXWXI0Iq7qufPUHBsRCRkb1uohM90t3VsnF3nPv06YO0v07Kx7dzNrKjsxlK+8C223Yl0RB7vuH3+JF3s9Iwo=' '-proj' '/data/vpulav2/Work/Jasper/reg_int_sim/reg_int_sim/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/reg_int_sim/reg_int_sim/.tmp/.initCmds.tcl' 'FPV_reg_int_sim.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/reg_int_sim.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top reg_int_sim

# Set up Clocks and Resets
clock Clk_reg
reset Reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
