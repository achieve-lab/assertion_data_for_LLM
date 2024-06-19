# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 15:30:21 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 694783
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40203' '-nowindow' '-style' 'windows' '-data' 'AAABRnichY+9CsJAEIQnikEsfBBBsdBGUttGEWyDRI0RyYX8KNroo/om8cthhFTucvszM3u350jynlVVyVr3QXDla4n/zHl/C89R2+q+00bWr1aWes1wI3E5Q42VyChQpFIxyAhkpwtudAMv4XNiihtlKnTQHtzXBnUf9RHmSj1l15W2cCE3JOQMbcStuZ3KQHLdYSb0IS9IA+ZTGKMz3eLvZL1nChZoZreeg5+oCvujD+8qLHQ=' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_register_syn/can_register_syn_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_register_syn/can_register_syn_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_can_register_syn.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_register_syn.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
