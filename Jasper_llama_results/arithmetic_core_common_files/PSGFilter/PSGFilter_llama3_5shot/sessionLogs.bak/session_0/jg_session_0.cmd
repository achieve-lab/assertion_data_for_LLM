# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 16:11:01 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 96459
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43111' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY7NCoJQEIW/WyTRoodoGdUm2rmupUbQVqQ/jeqKaUGbetTexI6SgdAM83POnLlzDeA+i6KgsvZDycFjLv+ZeX8b19C0EreazPLVqNCpl2uJo+gz5oIl4EBOLGYoJuQkt9zF55pflRO5JSVjx1a8x0rqrtR7TW7qB/qrz1ozX7OFUKxXSn3KRHUjBD1tJGIsR6HRH21QXQ85K6ZCM92PpM+qX38A38slhw==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGFilter/PSGFilter_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGFilter/PSGFilter_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_PSGFilter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGFilter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
