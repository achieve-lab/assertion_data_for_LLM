# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-31 11:12:25 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 61205
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39683' '-nowindow' '-style' 'windows' '-data' 'AAABMnicfY+5CsJAEIa/KAax8EHEoxC71GmjCLbBK0YJblCjaKOP6pvEfxcjpHGGnZ35jz08IHiWZYmL5kPFJyJU/sJ7f5vAox52btSR2au2Q6syVxJfq8uAI4aYHQV7IT0hSzKl4Sa8EH9WzZWGExe2bIRHzKVuS52IuTpnyJSFuIRUupiVuoy7OnuH/ctQ+FoYdOTMdZ7hoKn/x2PfljtuLP+EkXv9B1AnJv4=' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_2d_fht/fht_bfly_noFF/fht_bfly_noFF_gpt_3.5/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_2d_fht/fht_bfly_noFF/fht_bfly_noFF_gpt_3.5/.tmp/.initCmds.tcl' 'FPV_fht_bfly_noFF.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_bfly_noFF.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5.sva
exit
