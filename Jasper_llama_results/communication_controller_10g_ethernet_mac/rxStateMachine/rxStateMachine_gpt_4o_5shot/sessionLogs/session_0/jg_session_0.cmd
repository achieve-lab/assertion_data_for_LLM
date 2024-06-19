# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 23:18:52 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 338845
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35889' '-nowindow' '-style' 'windows' '-data' 'AAABPnicfY/NCoJQEIU/iyRa9CBRraqV63ZhEbSVsB+N8IpdK9rUo/YmdpQM3DTDnZ9zzgxzHcB7FkVBZe2HgovPXP4z5/0tPIemlX2riaxejQyderiWuHp9RiQYAo7kxEIGQrac5Yab8Fz8RTGVGzIse3bCfdZSd6U+iLmqHurWJRtxGXexVntK9UI5JNL2RN1YWKjt0NNsKq3hpG72d6q8LxUeMKmuneqmSJWtfvIBYnEqTg==' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/rxStateMachine/rxStateMachine_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/rxStateMachine/rxStateMachine_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_rxStateMachine.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxStateMachine.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
