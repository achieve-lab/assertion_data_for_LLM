# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:39:41 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 72816
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34877' '-nowindow' '-style' 'windows' '-data' 'AAABUniclY+9CsJAEITnFINY+CCCgqlTim0UwTaE+E/0Qkwi2Oij+ibx8zBCSnfZvdnZueHOSAoedV3LRfdO8xRqTv7CvL4gMGrHZ+60meWzdUq95nIj8aihxrrIKtJepY4wI5hYKWl1gy/ZX+kZaZWr0FYb+FAr1H3UOzYV2OetC63ZJThUOCTgHH3sbqSgikrxm+CTgKQBDhkqqxPT7A+PyL0y1pnymaZwB3wK97s39zwuMQ==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_read_levels/FPV_cavlc_read_levels_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_read_levels/FPV_cavlc_read_levels_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_cavlc_read_levels.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_read_levels.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva
exit
