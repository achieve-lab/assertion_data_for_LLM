# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 21:05:25 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 151925
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44683' '-nowindow' '-style' 'windows' '-data' 'AAABMnicdY7NDsFQEIW/SzRi4TEsJITYdm2pRGLb1F8R3IaWsOFRvUkdNyrpwkzm75wzkzGA/8jzHGfVu5JHwFD+M/P6Nr6hbJ+5UkYmz1KFWrFcSDxFkw5HLCExGVshbSERe7nlKjwTf1ZO5JYTKSuWwgOmUtelXou5qG/p1zEzcXNuTjdSxLqWus2u6kJ3oaGtRIhlp6n3Rx+6LyIOioGmvv7YiEnd929hSSfz' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/byteNegator/byteNegator_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/byteNegator/byteNegator_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_byteNegator.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/byteNegator.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva
exit