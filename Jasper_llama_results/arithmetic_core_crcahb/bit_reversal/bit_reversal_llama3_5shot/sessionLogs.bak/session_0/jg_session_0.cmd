# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 16:04:17 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 92125
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34941' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY/NCsJADIRnFYt48DlE0IPirWevVQSvpf4r6pa1reBFH9U3qV+LFXowIclmMhOyRpL/zPNcpTUfJE+BpvjPzPv78I3qVvSNOjJ/1arUqsQVxSO6Gugqq1B7pTqC9EEinXGrO3jK/EaOcSunRFttwAMtYLdh75hkvHvcOtOS2YpNCdXBzQjHhmLnEHRNlTroYnCrE93oryIsL4l0IcZ0E/ADqqT8wQcY4ij3' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_crcahb/bit_reversal/bit_reversal_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_crcahb/bit_reversal/bit_reversal_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_bit_reversal.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/bit_reversal.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
