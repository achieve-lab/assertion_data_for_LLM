# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 13:58:09 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 605789
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45041' '-nowindow' '-style' 'windows' '-data' 'AAABKHicZY7NCsJADIS/Khbx4DN4FhVEvPXstYrgtfjXVilu0VbRiz6qb1KnixWKCZtMJpNsHMB7FkWBteZDwcVnJv+Z8/4Cz6FuZd2oM4tXLUOrGq4krl6XIScMARE5BzF9MWsSueEmPlf/opjKDWcy9uzE+yylbksdqnMV7unWOSv1QmLpAjZCCXdGqrZC0JE+1RbDUdXgT1nekVpmoqmp8li/x9Jn9uYPuhklgw==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/fht_bfly/fht_bfly_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/fht_bfly/fht_bfly_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_fht_bfly.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_bfly.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
