# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 10:40:26 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 39007
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33313' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY7NDsFQEIW/Eo1YeAZrCRux69q2RGLb1E+VlNvQEjY8qjep40Yl10xm7pkzZ+6MBwSPqqqw1rwr+YRM5D/zXl8QeLj2qRsuM3s6L7Tq4VriK7oMOGKI2FKyE9MXE5PJDVfxpfpn5VxuOFGwYS0+ZC51W+pEnYtwT7dOWaiXkEoXsRTKuDFUtRKCjvS5fjHs7a5/ZWQ3xxwUI1Vj7U6lLuzFb3O5JX8=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/fht_bfly/fht_bfly_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/fht_bfly/fht_bfly_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_fht_bfly.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_bfly.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva

# Elaborate design and properties
elaborate -top fht_bfly

# Set up Clocks and Resets
clock clk
reset rstn

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report

exit
