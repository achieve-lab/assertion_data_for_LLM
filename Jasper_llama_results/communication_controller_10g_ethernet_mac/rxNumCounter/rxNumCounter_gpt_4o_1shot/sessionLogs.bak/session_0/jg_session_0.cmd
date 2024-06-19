# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 16:42:11 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 733277
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45681' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY/NCsJADIS/VSziwecQQUHx2Jvg0SqC1yL+i7qltipe9FF9kzpbrNCDCZtMJpmQNYD/zLKM3KoPBY+Akfxn5v0FvqFsrq6UmemrlKFWiIsRT69JhzOWkC0pezFtMQuOcstNfKr+RTGSW2IS1qzEB8w0Xdf0Rp2rcEu3TpirF3NnLM2JoTRug1PFdJWX2gwN6SIxloOq/l+FuysSDhnkV/Z0y04oyX/wARVeKPY=' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10g_ethernet_mac/rxNumCounter/rxNumCounter_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10g_ethernet_mac/rxNumCounter/rxNumCounter_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_rxNumCounter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxNumCounter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
