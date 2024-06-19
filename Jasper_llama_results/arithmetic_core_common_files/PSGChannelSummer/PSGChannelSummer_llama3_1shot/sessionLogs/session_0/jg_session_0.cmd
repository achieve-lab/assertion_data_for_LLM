# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 19:18:14 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 65889
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33465' '-nowindow' '-style' 'windows' '-data' 'AAABRnichY9BC4JAEIWfRRId+iFBUXQLb0EdNYSuImValCulBV3qp/ZP7Esy8NQ8dnbnvZnHrCXJeZRlqSrad5ItVwvwC+v1fTiWmvGpW01m9WzcUqcerltsTl9DpTIKFKvQHmYAE+oIjG7wBfqFnAGjs3JF2sK78unu0r1DufIes6unNZqHttRcCU4piHDz8TiBCI8RLhs4qcd8BmN0oJr9nQyqzUKqUFOqCbslTOfVj96O/Cs3' '-proj' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGChannelSummer/PSGChannelSummer_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGChannelSummer/PSGChannelSummer_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_PSGChannelSummer.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGChannelSummer.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva
exit
