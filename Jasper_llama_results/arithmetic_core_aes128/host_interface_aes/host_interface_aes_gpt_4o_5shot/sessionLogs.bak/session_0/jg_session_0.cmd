# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 17:21:09 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 768566
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42087' '-nowindow' '-style' 'windows' '-data' 'AAABRnicfY+7CsJAEEVvFINY+CGiVtoFS9sogm0IMWpEsiEPBRv9VP8knixGSOMMOztzH8usI8l71nUtG/0HxZWvNfkL5/1tPEfdaOZeF9m+Orc0aM2txOWMNVMqo0AnVUpAJiChrqTRHbyCL6gZaZSrVKwDuK8d6iHqI8yNfsquG+3hzigLlAEvptaRowoV0c2ZI16XRngzGKML0+qvK+COYZs9M6tZ2K2XYI2vtD/6AOQ8LEo=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_aes128/host_interface_aes/host_interface_aes_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_aes128/host_interface_aes/host_interface_aes_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_host_interface.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/host_interface.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
