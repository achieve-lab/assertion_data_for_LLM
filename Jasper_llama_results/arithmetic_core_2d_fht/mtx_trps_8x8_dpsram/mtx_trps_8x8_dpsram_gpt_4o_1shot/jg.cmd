# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:01:59 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 609584
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44003' '-nowindow' '-style' 'windows' '-data' 'AAABUnicjY+9CsJAEIQnikEsfBBBQRBJkcLKNopgG8T4i/GOmKjY6KP6JvFLMEI6d7n9mZm9vXMk+c88z1Va80FwFWiK/8x5fwvfUd2KvlFH5q9allrVcCVxOV31dZZRqJ0yHUB6ICudcKMbeAZ/IVrcKFGqjSLwQAvUbdRbmCv1mLfOtISLUd3JKXrLdCiP3iNHZZ+wIdYAfs0eqcMtFtToSDf5c754s0UTalT+YAizp0rL330AFDsueg==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/mtx_trps_8x8_dpsram/mtx_trps_8x8_dpsram_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/mtx_trps_8x8_dpsram/mtx_trps_8x8_dpsram_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_mtx_trps_8x8_dpsram.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/mtx_trps_8x8_dpsram.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva

# Elaborate design and properties
elaborate -top mtx_trps_8x8_dpsram

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