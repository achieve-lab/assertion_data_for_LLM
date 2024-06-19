# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 17:53:52 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 808258
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38033' '-nowindow' '-style' 'windows' '-data' 'AAABJHicVY5BCsJADEVfFYu48AgeQFAQcde12yqC2yJVa0WcUlsFN3pUb1L/DFaYhEkyP/8nCYDo1TQNzrpPhZCYpfxvwedXRAG+2X/HR9ZvL0OvFbeUUG/IhCuGhIyaXMhYyI6L3PAQXqt/UyzkhpKKA3vhMRux+2If1bmrHunWFVv1Uk1IhJbSZkylSTUPBmJb1HB2m3yevaEQN2EuzUJ5ps0nsSt37xcUlySX' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cellular_automata_prng/ca_prng/ca_prng_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cellular_automata_prng/ca_prng/ca_prng_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_ca_prng.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ca_prng.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
