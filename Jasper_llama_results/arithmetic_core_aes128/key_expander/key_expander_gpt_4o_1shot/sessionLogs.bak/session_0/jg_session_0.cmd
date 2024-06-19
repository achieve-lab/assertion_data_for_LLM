# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 17:26:53 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 777843
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36475' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY9LC4JQEIU/iyRa9DsiKChaum5rEbQVSXvTFdNem/qp/RM7XjJw0Qx3HufMGeY6gPcsigJrzYeCi89U/jPn/S08h7qVfaOOzF+1DK1KXI24el0GnDAEbMjZCekLCTnKDVfhufizYiI3pGTERMJ9Fppua3ot5qK6p1tnLMUdNHNXjrmJC7UhUp0ylHqlzdCRLhFi2Ksb/1WUdyVSBUzslSPdslWV2R98ABkkKQA=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_aes128/key_expander/key_expander_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_aes128/key_expander/key_expander_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_key_expander.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/key_expander.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
