# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 13:13:37 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 40184
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39357' '-nowindow' '-style' 'windows' '-data' 'AAABLnicbY69CsJAEIQnikEsfAorwTRil9o2/oBtCBo1ol7QRMFGH9U3id8FIxy4y+3ezs4O40kKn1VVqY72g+Ir0pT8hff+fkJPbti55SLzl9OlTnPcUHxeXyOdZRRrp1IZyBAk0ZE0uoOX7K/UnDS6qFCqDXikJewu7C2bG/8BXmdasVugcIJluLXKKT3gco2q1OMmR8nowBT8Zce1A4snGjNN8LCHUdTOP6dMJt8=' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/Ramdon_gen/Ramdon_gen_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/Ramdon_gen/Ramdon_gen_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_Ramdon_gen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/Ramdon_gen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
xit
exit
