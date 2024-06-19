# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:36:11 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 75659
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44745' '-nowindow' '-style' 'windows' '-data' 'AAABMnicdY7NDsFAFIXPEI1YeAwLCZGIXde2JRLbpmFKBVO0JDY8qjepT6OSLtybuT/nnjM5RpL/KIpCZTTvFE+BpuQvzOs7+Eb1+OyNOjJ/1rrUqsQVxeN1NdBRTqE2ypWA9EEi7UmnG3jO/UJNSaezMlmtwQMtYLdhx1yuzD28zrTkFsOzOsFLuCR0CzJEu+JfqYMqBXHasY3+8MPSRaQDb8w2wccWTVa6fwNrDSgZ' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/freqdivider/freqdivider_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/freqdivider/freqdivider_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_freqdivider.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/freqdivider.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit