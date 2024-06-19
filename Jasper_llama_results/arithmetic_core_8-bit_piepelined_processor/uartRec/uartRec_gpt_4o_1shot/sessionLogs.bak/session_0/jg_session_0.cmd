# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:50:51 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 643812
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:32961' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7NCsIwEIS/Khbx4CN4FkFB8Niz1/oDXkup/4gp2ip40Uf1TeI0WCHuks3s7GwyARA9rbW4aD5UQmKmyl8E7y+IAvyo+obPzF/eDa16uZaEOl2GnDEk7Cg5iBmISTkpDXfxpeZX1VxpuFCwYS0+Zil1W+qtJjfhnrzOWLmd1CkX0maMhDK9Bx2pc00MR3X9P13lIVeXMHGOxvp3L1Q4tx/RPCSa' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/uartRec/uartRec_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/uartRec/uartRec_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_uartRec.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/uartRec.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
