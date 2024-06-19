# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 13:52:09 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 600884
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41461' '-nowindow' '-style' 'windows' '-data' 'AAABXniclY/BCsIwEERfFYt48EMEBcFjz71WEbwWqVqVaoptFbzop/ondRKt0KO7JNmd2ZkkHhA86rrGRfeuzSciVP7Ce32LwKMdtu+0kcWzdUKvETcjvtaQMWcMMSkVByEjIWsypeEmvBJfaM+VhgslWzbCI5aa7mt6J+bqjEPmrMQVckql+0yepM6ki0nkYN1sbVWpbpqoS8TDQF65bjAc1YV/udj35w6Zud9Mxe9Vle6nb5OLMWY=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/signed_mult_const_fpga/signed_mult_const_fpga_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/signed_mult_const_fpga/signed_mult_const_fpga_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_signed_mult_const_fpga.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/signed_mult_const_fpga.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva

# Elaborate design and properties
elaborate -top signed_mult_const_fpga

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
