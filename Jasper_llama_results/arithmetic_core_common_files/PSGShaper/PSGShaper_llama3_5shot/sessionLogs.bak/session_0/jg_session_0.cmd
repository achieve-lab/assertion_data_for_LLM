# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 16:02:41 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 90467
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41645' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY7NCsJADISnikU8+BAeRb2It5712IrgtRT/qqhbaqvgRR/VN1k/FysUTEg2mZkk60kKHtZaOWveSb5CTfGfea9vEXiq26dv1JH5s/ZKrWq4kvhEV0OdZRRrp1J7kD5IoiNudAMv4S/kDDfKVWijNXioBeo26i3MlbrHXyMt4SK4GZGyKUOfa8Tcip1Sh4kMxOhAN/ijjd31RCdiTDfhfoq+cL9+A97XJYE=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGShaper/PSGShaper_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGShaper/PSGShaper_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_PSGShaper.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGShaper.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
