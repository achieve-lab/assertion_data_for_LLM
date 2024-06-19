# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 12:50:00 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 575236
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33833' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY7BCsJADETfKhbx4Dd4FhQEjz17rSJ4LaJWLdYt2ip40U/1T+p0scKasEl2MpnEAOGzqiqctR8KAREz+c/M+1uEBt/qf8tHFi8vQ6cZbiiBXp8RZywxe0qOQoZC1pzklrvwUv2rYi63XCjYsRUesRS7K3aizk31QLfOWamXSClxqpnYGWNNbaQIPfFzqVhSt+ufWd+Rix0zdehEuw+qCnfxB2+lJXY=' '-proj' '/data/vpulav2/Work/Jasper_corrected/async_FIFO/fifo_mem/fifo_mem_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/async_FIFO/fifo_mem/fifo_mem_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_fifo_mem.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fifo_mem.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
