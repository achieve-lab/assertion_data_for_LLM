# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:06:07 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 51987
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46457' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY67CsJQEERPFINY+BGWojZil9o2imAbQjQ+UG+IiYKNfqp/ch2DCVxwl33M7Cy7HhA8rbVU1n4o+YTM5Y15718TeLj2xS2XWb6cCp16uZb4ij5jLhgidpQcxAzFxJzkhrv4UvOrciY35BRs2YgPWUndlTrV5KZ+oF8XrDVLm+1E+lxoopqoQk8bmTjDUWj0RxtV12POiqnQTPf30hTV1x8gYiZ/' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/flow_ctrl/flow_ctrl_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/flow_ctrl/flow_ctrl_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_flow_ctrl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/flow_ctrl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
