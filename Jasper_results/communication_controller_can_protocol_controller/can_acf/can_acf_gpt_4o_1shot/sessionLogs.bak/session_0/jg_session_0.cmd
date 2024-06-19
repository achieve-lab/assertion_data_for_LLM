# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 12:40:35 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 160950
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40543' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY69CsJAEIS/Uwxi4SNYi6AgWKa2jSLYhhCNRiQXNFGw0Uf1TeLkMELc5fZndnZvDOA/q6rCWfeh4BGwlP/MvL+Fb2hb3XfayPrVytBrlhuKpzdkSoYl5EBJKmQiJOIst9yFl5pfFXO55ULBnp3wgI3YfbETTW6qR9K6YqtZrAuZcqQqYaadWPdgIHauG5aTuvEfr9aQixuycIrm+veoqnBqP8PIJGQ=' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_acf/can_acf_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_acf/can_acf_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_can_acf.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_acf.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
