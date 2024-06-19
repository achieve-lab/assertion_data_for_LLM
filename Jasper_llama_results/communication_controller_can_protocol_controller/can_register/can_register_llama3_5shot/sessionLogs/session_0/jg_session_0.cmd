# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:00:21 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 33539
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43521' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY+9CsJAEIQnikEsfA4RtFDsUttGEWxDiBojmgv5UbDRR/VN4udhhBTucvszs7PsOZK8R13Xsta9E1z5WuI/c17fwnPUtk/faSPrZytLvUbcjLi8oSZKZRQoVqUEZAwS6owb3cAr+IKY4Ua5Su21A/e1YbrP9AHmSj3i1pW2cBEbUnLObMzWwqpyTckRm6UBugzE6EQ3+6sI7CWhLrw53QLmiKq0P3gDENYo3w==' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_register/can_register_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_register/can_register_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_can_register.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_register.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
