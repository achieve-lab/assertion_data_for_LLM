# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 16:10:37 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 96066
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40311' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY7NCoJQEIW/WyTRoodoGdUiaOe6lhpBW5H+NKorpgVt6lF7EztKBkIzzM85c+bONYD7LIqCytoPJQePufxn5v1tXEPTStxqMstXo0KnXq4ljqLPmAuWgAM5sZihmJCT3HIXn2t+VU7klpSMHVvxHiupu1LvNbmpH+ivPmvNfM0WQrFeKfUpE9WNEPS0kYixHIVGf7RBdT3krJgKzXQ/kj6rfv0B37klhg==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGFilter/PSGFilter_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGFilter/PSGFilter_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_PSGFilter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGFilter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top PSGFilter
exit
