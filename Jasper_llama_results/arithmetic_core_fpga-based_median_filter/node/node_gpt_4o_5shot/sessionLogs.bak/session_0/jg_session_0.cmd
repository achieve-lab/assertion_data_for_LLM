# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:34:30 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 844024
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40605' '-nowindow' '-style' 'windows' '-data' 'AAABFnicVY49C8IwEIafKBZxcHZ2FHTSrbNrFcG1iPUTMUFbBRf9qf6T+jbYQu7I5e69J7kzQPwuyxJv7ZdCRMJc3pj5/pPYEFpVt0Jl+Qlu6NSPayTS6TPmiiXlQMFJykjKhovc8pReqH9XdHLLjZwdmfSEleiu6L06D+UD7bpgrV71YyZuInqrn6Anzum15axq2BDVXCcqZeq3mGnWUVnuN/wBDeciMg==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_fpga-based_median_filter/node/node_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_fpga-based_median_filter/node/node_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_node.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/node.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
