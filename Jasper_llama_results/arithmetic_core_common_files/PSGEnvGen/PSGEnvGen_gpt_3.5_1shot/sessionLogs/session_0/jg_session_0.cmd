# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 17:59:44 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 810400
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37079' '-nowindow' '-style' 'windows' '-data' 'AAABLHicbY7NCoJQEIXPLZJo0UO0DBIi2rmtlhpBW4kyK6IrpQZt6lF7E/uUDIRmuDNzz88wRpL3LIpCVbQfFEe+5uQvzPs7eEbNKP+tJrJ8NbrUqc21xOH1NdJFVqFiZTqCDEE2OpNWd/AM/kZNSKurUkXagftaoe6i3sPkzANuDbSGC+AWmuHM6RHdxbdlp9TDkbDH6sTP/aMtb0nQh5rAT+ljLjjgSKu7PxZKJUU=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_common_files/PSGEnvGen/PSGEnvGen_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_common_files/PSGEnvGen/PSGEnvGen_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_PSGEnvGen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGEnvGen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
