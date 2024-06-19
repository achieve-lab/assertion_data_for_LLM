# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:03:51 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 815290
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42725' '-nowindow' '-style' 'windows' '-data' 'AAABRHichY/NCoJQEIWPRRItepAgIaJNuK6lhtBWoiyL6l5KC9rUo/Ym9ikZuGqGOz/nnBnmOpL8Z1EUqqz9ILgKNMN/5ry/he+oaWXfaiKLVyNLnXq4lri8voY6yyjWTrn2IAOQlY640R08h78SLW50UaZEG/BAEeou6i3Mjdrj1lBLuBBujiJHbasYEU94wgaPfs1+qce0BTE60E3/zJU3WrBYY3ZMyCMuS5nOqv98AFEeKus=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_common_files/PSGOutputSummer/PSGOutputSummer_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_common_files/PSGOutputSummer/PSGOutputSummer_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_PSGOutputSummer.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGOutputSummer.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva

# Elaborate design and properties
elaborate -top PSGOutputSummer

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
