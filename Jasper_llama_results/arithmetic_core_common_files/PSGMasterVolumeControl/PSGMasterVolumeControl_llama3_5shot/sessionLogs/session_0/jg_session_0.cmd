# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 19:39:58 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 144894
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33921' '-nowindow' '-style' 'windows' '-data' 'AAABXniclY+7CsJAEEVvFINY+CGCNmKXToiVJCLYhuBbNBvyULDRT/VP4nExQkpn2N2Zc2cvu44k71FVlWy072yuAvnkL5zXt/AcNePTt5pk8WycUqe+XI+4rL6GSmQUaa9SR8gAEutMGt3gJXrOnpJGmQpttYEHWjLdZXqHcrXGvkKt0EK0meb45HY+gxocS13optQJPLNsRLXmlHp4pZae6Py/XCL74hgl1phuwp0DSmF/+gYz3TB5' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGMasterVolumeControl/PSGMasterVolumeControl_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGMasterVolumeControl/PSGMasterVolumeControl_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_PSGMasterVolumeControl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGMasterVolumeControl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
