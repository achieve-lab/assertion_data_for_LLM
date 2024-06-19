# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 17:22:24 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 769861
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37867' '-nowindow' '-style' 'windows' '-data' 'AAABSHicfY+7CsJAEEVvFINY+CGigohdCivbKIJtCDG+kGzIQ8FGP9U/iSeLEdI4w+7M3Mew60jynlVVyUb3weXK14r8hfP+Np6jdtRzp41sXq0q9RpzI3E5Q02UyCjQUaXOICOQUFfS6A5ewufcKWmUqVCsPbivLeo+6gPMjX7MW9fawZ1Q5igDNibWkaEKFdFNmSO2SwO8KYzRhWn51xVQY9j6nanVzNm0oM5Aa2dh//QBNx8sOw==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_aes128/host_interface_aes/host_interface_aes_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_aes128/host_interface_aes/host_interface_aes_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_host_interface.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/host_interface.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
