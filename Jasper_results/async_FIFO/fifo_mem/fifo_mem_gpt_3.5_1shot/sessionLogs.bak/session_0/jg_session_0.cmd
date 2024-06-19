# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 12:23:48 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 136714
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33283' '-nowindow' '-style' 'windows' '-data' 'AAABKnicZY69CsJAEIS/KAax8BmsBSMidqltowi2QdT4g/EOTRRs9FF9kzgJRjjc5fZnZnZvPSB8FkVBZc2Hgk/EVP4z7/0tQg/Xyr7hIvOXk6FVD9cSX6/LgDOGmB05ByF9IStOcsNdeC7+qmjlhgsZWzbCIxZSt6VOxNxU93TrjKW4RJuSamsqdUqgqbU2Qkd6qy2Go7rgT1neYaWOGYudKI/0+16KjGF19QcBUCWc' '-proj' '/data/vpulav2/Work/Jasper/async_FIFO/fifo_mem/fifo_mem_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/async_FIFO/fifo_mem/fifo_mem_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_fifo_mem.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fifo_mem.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5.sva
exi
