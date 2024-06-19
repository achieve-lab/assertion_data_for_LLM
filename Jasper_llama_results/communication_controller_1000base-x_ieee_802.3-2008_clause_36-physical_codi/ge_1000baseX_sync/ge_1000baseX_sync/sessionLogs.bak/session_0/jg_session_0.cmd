# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-02 15:30:00 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 171142
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45935' '-nowindow' '-style' 'windows' '-data' 'AAABMHicjY5BD8FAEIW/JRpx8CMcJQTnnl1LJOImVAkR26gSLvxU/2S9blTSm/eyszNvZt6uAcKncw6P+kMhIGIs/mDe3yQ0VFHUtaoyfVVuaJTL5Uig06bHCcuSHTl7KV0pK46i5SY9Vz9TTEXLmQsJG+kRM003Nb1V56p8pL9OmHuvRHHIwHMtv0zKQlrGXX4xffnEegNackjlazmo6vyxW+ADuV4l+A==' '-proj' '/home/vpulav2/Work/Jasper/ge_1000baseX_sync/ge_1000baseX_sync/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/ge_1000baseX_sync/ge_1000baseX_sync/.tmp/.initCmds.tcl' 'FPV_ge_1000baseX_sync.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ge_1000baseX_sync.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
exit
