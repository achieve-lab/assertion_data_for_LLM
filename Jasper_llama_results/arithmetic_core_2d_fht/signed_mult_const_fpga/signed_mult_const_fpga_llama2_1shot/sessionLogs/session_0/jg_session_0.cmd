# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:12:06 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 50142
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46851' '-nowindow' '-style' 'windows' '-data' 'AAABXniclY/NCoJAFIWPRREtepCgoNau3VoEbUWsrLBGUgva1KP2JvbNlIHL7sWZuedvRk+S/6jrWq66d5a+QgX0r7zX9+B7apedO21k+WztUq8xN5I+30gTnWUUKVWlA8gYJFZGG93AK/iCNaeNLiq11QY81Ar1APUO5uqCAy20hitISvF9lCfcGb5ICQk2zZ6tK+WmKVMCLw3JyrnB6MgU/JUSuRfHqGLNmWbwe3Sl+9M3klUxUg==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/signed_mult_const_fpga/signed_mult_const_fpga_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/signed_mult_const_fpga/signed_mult_const_fpga_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_signed_mult_const_fpga.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/signed_mult_const_fpga.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

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
