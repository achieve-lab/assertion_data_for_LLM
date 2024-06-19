# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 13:49:22 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 598419
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40575' '-nowindow' '-style' 'windows' '-data' 'AAABYHiclY/NCsIwEIS/Khbx4IMICiLeei7eqgheS6n/VFNsq+BFH9U3qdNohR7dJZvszOwkcQDvUZYlNtp3FZcAX/kL5/U9eA7NqPpWE1k8Gzt06uFa4mr1GXLGELKj4CBkICQiURpuwgvxmWqqNFzI2bAWHrCUuiv1VszVGvvMWYnL5LTT3Ed50nSiuZBYDpVbdY6sKmakLhYPPXmlusFwVDf7y6V6f2qRiRyn2sdi9lLm9q9v8d8xXw==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/signed_mult_const_asic/signed_mult_const_asic_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/signed_mult_const_asic/signed_mult_const_asic_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_signed_mult_const_asic.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/signed_mult_const_asic.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
