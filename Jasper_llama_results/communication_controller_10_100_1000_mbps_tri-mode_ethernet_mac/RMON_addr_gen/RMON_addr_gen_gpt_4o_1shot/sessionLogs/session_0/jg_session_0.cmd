# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 19:11:44 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 882047
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34663' '-nowindow' '-style' 'windows' '-data' 'AAABOnicfY+7CsJAEEVvFINY+CGCgmCZOp3GB9iGYOILcYMmCjb6qf7JejYYIY0z7O7MfQyznqTgaa1VFe0Hl69IIfkL7/0tAk/NcH2riSxejVfq1OZa4nP6Guoso1g7lTqADEASnUijO3gJf+XOSaOLCmVKwSOtUHdRb2FulTPUXGu4pabwM6oEbYrLzc+YNMK/YbbUw5nDGB3pJn887s3xxajcpmP22VMV1S8+bagopA==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/RMON_addr_gen/RMON_addr_gen_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/RMON_addr_gen/RMON_addr_gen_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_RMON_addr_gen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/RMON_addr_gen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
