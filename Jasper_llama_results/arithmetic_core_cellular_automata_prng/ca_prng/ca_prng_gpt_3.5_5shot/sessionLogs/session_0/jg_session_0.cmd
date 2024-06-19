# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 17:54:54 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 808810
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35163' '-nowindow' '-style' 'windows' '-data' 'AAABJHicVY5BCsJADEXfKBZx4RE8gKAb6a5rt1UEt4NUrRZxSm0V3OhRvUn9LVaYhEkyP/8nMUD0quua1vpPhYCYpfxv5vMrIoNvzb/nI+u3l2HQiTtKoDdmxhWHJaXiLGQqZMdF7ngIr9S/KeZyR0HJgb3wmI3YQ7GP6txVT3Triq16iSZYoYW0KXNpEs2DkdgN6sjaTT6vuSEX17KQJlQOtfkkdtne+wUUzySb' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cellular_automata_prng/ca_prng/ca_prng_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cellular_automata_prng/ca_prng/ca_prng_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_ca_prng.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ca_prng.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva
xit
exit
