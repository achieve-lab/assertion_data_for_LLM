# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 19:22:03 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 67600
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45627' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7NDsFQEIW/SzRi4RGsRcJCYte1bYnEtmmKquBKtSQ2PKo3qdNGJddM5u/MmR8D+M+yLKml/ZDzCJhLf2Le38Q3uFLVLRdZvpwInWa4oXiyPmPOWEISClIhIyERR6nlLrxQ/yp/kVoycrZshAesxO6KvVPnpnygXxes1Yu1IRSaaTZhoplY+6AndoVaDqqGf7ywvhpxkk1VzXR3L25ef/sBz/Ikkg==' '-proj' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_cellular_automata_prng/ca_prng/ca_prng_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_cellular_automata_prng/ca_prng/ca_prng_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_ca_prng.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ca_prng.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

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
