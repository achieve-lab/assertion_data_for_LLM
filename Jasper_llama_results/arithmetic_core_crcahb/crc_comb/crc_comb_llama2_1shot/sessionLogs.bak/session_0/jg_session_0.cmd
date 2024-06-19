# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 16:05:31 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 93082
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43305' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY69CsJAEIS/Uwxi4TNYCwpap7aNItiGeP5F1AuaKNjoo/omcTyMEHe5/ZmZvV0DhI+yLPHWvCsEREzkPzOvbxEa6vbpG3Vk9qxlaFXDlSTQ6zLghCNmS0EqpC8k4SB33IQX4i+KmdxxJmfNSnjEXOq21BsxV9U93TplIc5KZ312HFky1JTVj9CRPhPr2Ptd/8rYb05UJ4zVjbR7Jy73F78BafMlTg==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_crcahb/crc_comb/crc_comb_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_crcahb/crc_comb/crc_comb_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_crc_comb.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/crc_comb.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top crc_comb
exit
