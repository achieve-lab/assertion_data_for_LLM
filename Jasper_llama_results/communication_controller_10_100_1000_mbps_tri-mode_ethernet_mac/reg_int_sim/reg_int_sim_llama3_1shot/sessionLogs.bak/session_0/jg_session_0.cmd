# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 13:12:31 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 39223
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38619' '-nowindow' '-style' 'windows' '-data' 'AAABMnicdY69CsJAEIQnikEsfAwLQVFsU9tGEWxD8CdG1AvJRcFGH9U3OT+DEVK4y+3Ozs4c60kKHs45VdG+U3yFmpO/8F5fEHhqxmduNZnls9GlTm2uJT6vr5EuMoqUqFQKM4SJdSKNbvAl+4KakUa5rHbawodaoe6i3rO5ggfcutCaXY4moad4Lb0AnTUGb/hX6uHKUBkdmSZ/9FF1RQyKNWOawh/w2Or6N2fFKAs=' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/reg_int_sim/reg_int_sim_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/reg_int_sim/reg_int_sim_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_reg_int_sim.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/reg_int_sim.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva
exit
