# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-27 16:12:03 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 129255
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41511' '-nowindow' '-style' 'windows' '-data' 'AAABKnicdY69CsJAEIS/Uwxi4WOICFpZWKS2jSLYHhITfxAvqFGx0Uf1Tc5JMEIKZ9m93dmZYw0QPr33lGg+VAIipoofzPvbhIY6irlRZ+av2gutylxJAmWXIUcclg05OzEDMSsOCsdNfK79WTVTOE5cSFiLj1hI3ZY61eaqvq9bZyy1S9lKZ5lwV1ri0pkwEhvrZ+jIl4lz7DX1/jqKu7JyMxZT4AP9JSXK' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_2d_fht/fht_8x8_core/fht_8x8_core_gpt_4o/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_2d_fht/fht_8x8_core/fht_8x8_core_gpt_4o/.tmp/.initCmds.tcl' 'FPV_fht_8x8_core.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_8x8_core.v \
  ${RTL_PATH}/mtx_trps_8x8_dpsram.v \
  ${RTL_PATH}/fht_1d_x8.v \
  ${RTL_PATH}/fht_bfly_noFF.v \
  ${RTL_PATH}/fht_bfly.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva


# Elaborate design and properties
elaborate -top fht_8x8_core

# Set up Clocks and Resets
clock sclk
reset rstn

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report

exit
