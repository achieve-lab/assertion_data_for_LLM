# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 15:31:13 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 695932
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40339' '-nowindow' '-style' 'windows' '-data' 'AAABSnichY+7CsJAEEVvFINY+CGCFqJdatsogm0IUaNBsiEPRRv9VP8knixGSOUMuzt77szsrCPJe9Z1LWv9B5srXyv8Z877G3iOutbce12yeXVOadAWtykua6ypUhkFilXpDJlAQl1woxu8Qi/YM9woV6mD9nBfW7KHZB9RrsRzZl1rhxbRIeXMyY3pWtiqHBIS39FmkIg3pBEdMjSjxA73v7aZNYMGWtjJl/ATUWl/9QGoKS06' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_register_asyn/can_register_asyn_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_register_asyn/can_register_asyn_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_can_register_asyn.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_register_asyn.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
