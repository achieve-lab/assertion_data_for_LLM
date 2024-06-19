# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:50:37 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 643170
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33303' '-nowindow' '-style' 'windows' '-data' 'AAABJHicVY7LCsJADEVPFYu48BP8AEFBxF3XbusD3JZSH1XEKdoquNFP9U/G28EKkzAzyc3JJAEQvay1OGs/dYXEzOV/Cz6/IArwrc5bvrJ8ey90muYGCXX6jLhgSDhQcZQylJJylhse0ivVb7oLueFKyY6t9Ji16K7ovSp3xQPtumDjelJHrsRmjBVl+g96ogtVDCc3yefqHQplCVP1zPRONDkXXbp9vxTTJI8=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/uartRec/uartRec_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/uartRec/uartRec_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_uartRec.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/uartRec.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
