# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 10:40:22 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 38775
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45655' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY7NCsJADIS/Khbx4DN4FhTEa89eqwheS/2pVapbtFX0oo/qm9RxscKakOxkMtnEA4JHVVVYa96VfEIm8p95ry8IPFz71A2XmT2dF1r1cC3xFV0GHDFEbCnZiemLicnkhqv4Uv2zci43nCjYsBYfMpe6LXWizkW4p1unLNRLSKWLWApl3BiqWglBR/pcvxj2dte/MrKbYw6KsaqRdqdSF/biN3OBJXs=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/fht_bfly/fht_bfly_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/fht_bfly/fht_bfly_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_fht_bfly.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_bfly.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

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
