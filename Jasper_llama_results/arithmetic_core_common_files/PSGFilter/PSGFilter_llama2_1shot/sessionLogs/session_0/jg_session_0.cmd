# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 19:37:09 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 143822
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43327' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY7NCoJQEIW/WyTRoodoGRXU2nUtNYK2Iv1pVFdMC9rUo/YmdpQMhGaYn3PmzJ1rAPdZFAWVtR9KDh5z+c/M+9u4hqaVuNVklq9GhU69XEscRZ8xFywBB3JiMUMxISe55S4+1/yqnMgtKRk7tuI9VlJ3pd5rclM/0F991pr5mi2EYr1S6lMmqhsh6GkjEWM5Co3+aIPqeshZMROa6n4kfVb9+gPfgSWC' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGFilter/PSGFilter_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGFilter/PSGFilter_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_PSGFilter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGFilter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top PSGFilter
exit
