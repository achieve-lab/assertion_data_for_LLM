# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 17:53:25 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 807266
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42513' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY69CsJAEIS/KAax8BGsRVAQLFPbRhFsD4kaFfFCTBRs9FF9k3NyGCHucvszO7s3ARA9nXN4az8UQmLm8p8F728RBTSt6ltNZPlqZOjUyzUl1Osz5oLFkFJyFDISsuEst9yFl5pfFTO5Jadgx1Z4zErsrth7TW6qB9K6YK1ZogtGaK7dlIl2Et2DntgVajmpG/7xKg2ZuIaZVzTVvwdVhVf7AdDwJKI=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cellular_automata_prng/ca_prng/ca_prng_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cellular_automata_prng/ca_prng/ca_prng_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_ca_prng.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ca_prng.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
