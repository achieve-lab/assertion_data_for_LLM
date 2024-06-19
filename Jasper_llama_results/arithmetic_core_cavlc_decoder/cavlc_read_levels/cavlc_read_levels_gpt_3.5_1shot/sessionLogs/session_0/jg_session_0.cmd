# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:19:33 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 71076
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35795' '-nowindow' '-style' 'windows' '-data' 'AAABTHicjY9PC4JAEMXfFkl06IMEBRXdpGNXi6CriP2xkFZMDbrUR+2b2E/JwFsz7O6bN28es0aS+yzLUnV0H1yOPK3IX5j3F7hG7ajqTpvZvFqv1GuGG4nDGWqsq6x8nZTrDDOCCRSTVnf4nP6NOyGtUmU6aA/vaYu6j/pIpwDP2HWtHb0QhwKHEJyiD+qJGFRwYvwm+IQgaYBDgsrqQrX8Y7baNWHe1xyfBe8UNsIhq//1Aek9LOc=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_read_levels/cavlc_read_levels_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_read_levels/cavlc_read_levels_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_cavlc_read_levels.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_read_levels.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
