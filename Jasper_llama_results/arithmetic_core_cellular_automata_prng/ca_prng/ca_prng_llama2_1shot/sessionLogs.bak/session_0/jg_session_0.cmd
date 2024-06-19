# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 18:46:17 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 138748
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42861' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7NDsFQEIW/SzRi4RGsRULCumvbEolt0xRVwZVqSWx4VG9Sp41KrpnM35kzPwbwn2VZUkv7IecRMJf+xLy/iW9wpapbLrJ8ORE6zXBD8WR9xpyxhCQUpEJGQiKOUstdeKH+Vf4itWTkbNkID1iJ3RV7p85N+UC/LlirF2tDKDTTbMJEM7H2QU/sCrUcVA3/eGF9NeIkm6ma6u5e3Lz+9gPPuiSO' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cellular_automata_prng/ca_prng/ca_prng_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cellular_automata_prng/ca_prng/ca_prng_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_ca_prng.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ca_prng.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top ca_prng

# Set up Clocks and Resets
clock clk
reset reset_n

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
