# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 13:41:30 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 594635
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37893' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY5PCwFRFMV/QyZZ+BCWQinKYta2Q8p2EsaQvBczyIaP6puMMy+jptzbu3/OPfe+4wHBM89znNUfCj4hU/nPvPe3CDyqVvS1KjJ/VTI0yuWS4uu16XPCELEjYy+kK2TFUW64Cc80vyhaueFMypaN8JCF2E2xY02uqjvSOmOpWUwiXsTQMe9MGKhf6ya0tGF1x3BQ1/vDLbRYh42csrH+T1SlTvUH40clhA==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/fht_1d_x8/fht_1d_x8_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/fht_1d_x8/fht_1d_x8_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_fht_1d_x8.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_1d_x8.v \
  ${RTL_PATH}/fht_bfly_noFF.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva

  

# Elaborate design and properties
elaborate -top fht_1d_x8

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
