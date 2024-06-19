# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 17:13:16 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 112678
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42801' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7LCsIwEEVPFIu48BNci6Abcde12/oAt6XUN2qKtgpu9FP9k3oNVogzzGTmzkkyBggfZVnirH5XCogYy39mXt8iNPj26Wu+Mn16JzSqyxUSKNr0OWGJ2VCwk9KTknCQW27SC80vypncciZnxVJ6xFx0U/Rak6vqjnadsHB3EkfOxKYMVKV6D1qiM00se3XdPy52vyYcFUN1I/27FZu7bd/QUCSL' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/uartRec/uartRec_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/uartRec/uartRec_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_uartRec.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/uartRec.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit