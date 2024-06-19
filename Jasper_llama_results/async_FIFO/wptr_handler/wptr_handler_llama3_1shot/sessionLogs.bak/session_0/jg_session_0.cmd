# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:20:21 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 28966
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41561' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY/NCoJQEIWPRRIteo4ICqqt67YWQVuR/jTMK3ZNaFOP2pvYl2TgohnuvTPfnCOjI8l7VFWlOrp3Lle+luQvnNe38By149N32mT9bL1SrzE3Epcz1ESpjAKdVCiGjCGhEtKohBfMr9wZaZTL6qA93NcGdR/1kcmNesSuK22ZlRCLNlDEt1L0Ca5cU+iOWhrgyyBGZ7r5X0dQbxLqwlnQzdglwmXrP3gDH54pAw==' '-proj' '/home/vpulav2/Work/Jasper_llama/async_FIFO/wptr_handler/wptr_handler_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/async_FIFO/wptr_handler/wptr_handler_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_wptr_handler.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/wptr_handler.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva
exit
