# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 16:12:40 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 268129
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36307' '-nowindow' '-style' 'windows' '-data' 'AAABOnicfY+9CsJAEIQnikEsfBBBQbBMnTaKYBskalRC7siPgo0+qm8SvxxGSOMutz+zM8ueJyl4Nk0jZ8MHwVekEP+Z9/4Wgae+tf2gj2xevSyNOnFH8XlTzZXLKFaqWheQGcheGW50B6+Zl0SLGxWqdNQBPNIW9hj2icnNKUOttWOWsCEnF3BTtpZOVZAXVAm7pQlKC2Z0pVv90bS3WboYVnvpEuxMVblffADF+CnY' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_registers/can_registers_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_registers/can_registers_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_can_registers.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_registers.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
