# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:19:59 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 71369
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37049' '-nowindow' '-style' 'windows' '-data' 'AAABSnichY+9CsJAEITnFINY+CCCgmKZ2jaKYBtC/A3BCzGJYKOP6pvEL4cRUrnL7c3Nzg57RpL/rOtaLvoPiqdAK/IX5v0FvlE3mnevy2xenVsatMOtxOOMNdVVVqFOKnWBmcBESkmrO3xJ/0bNSKtchQ7awwfaoh6iPtKpwAt2XWtHL8ahwiEG5+gjN5GCKk6K3wyfGCSNcMhQWSVuuf+zza4Z86GWbvM53BlUuF99AJTdLPI=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_read_levels/cavlc_read_levels_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_read_levels/cavlc_read_levels_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_cavlc_read_levels.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_read_levels.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
