# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 15:40:23 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 707158
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46849' '-nowindow' '-style' 'windows' '-data' 'AAABJHicVY5NCsIwEEZfFYu48AgeQFAQcde12yqC2yL1HzGhtgpu9KjeJH4pVsgMmZl88yaZCEhezjlqaz8VYlLm8r9Fn1+RRITm761QWb6DDJ1muEFinT4jrhgyDlScpAylbLjIDQ/plfo3RSs3FJTs2EpPWYnuit6rc1c90K4L1urlIv2cZwvGyrneg55oK8Vwrn8KOb+DVZ0x1cxMeaKfj2LKet8vJusk4w==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10g_ethernet_mac/counter/counter_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10g_ethernet_mac/counter/counter_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_counter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/counter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
