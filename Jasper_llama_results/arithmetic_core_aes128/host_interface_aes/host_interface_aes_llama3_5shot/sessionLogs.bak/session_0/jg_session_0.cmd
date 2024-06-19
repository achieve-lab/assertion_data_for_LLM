# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 17:23:25 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 117637
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38297' '-nowindow' '-style' 'windows' '-data' 'AAABRnicfY+7CsJAEEVvFINY+CGiNmIXLG2jCLYhxPhCsyEPBRv9VP8knixGSOMMuztzH8OsI8l7VlUlG90HlytfS/IXzvtbeI7aUfedNrJ+tV6p15gbicsZaqJERoEOKnUCGYGEupBGd/ASPudOSaNMhWLtwH1tUPdR72Fu1GN2XWkLd0SZowyYmFhHhipURDWlj5guDfCmMEZnusVfV8AbwwZ2s1BXzoxuDlb7CvujD+MYLDc=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_aes128/host_interface_aes/host_interface_aes_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_aes128/host_interface_aes/host_interface_aes_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_host_interface.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/host_interface.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
