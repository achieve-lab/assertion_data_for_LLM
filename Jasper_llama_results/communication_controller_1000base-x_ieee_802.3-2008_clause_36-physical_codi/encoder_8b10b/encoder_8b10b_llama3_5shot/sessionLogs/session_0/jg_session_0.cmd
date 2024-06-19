# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 22:35:38 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 94305
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43549' '-nowindow' '-style' 'windows' '-data' 'AAABOnicfY/LCoJQEIY/iyRa9CBBUVTQwrVbi6CtmNqNSjEtaFOP2pvY3yEDN81w5sz8l8McC3AeZVlionlXsfFwlb+wXt/GsajHZ27UkcWzdkOrMlcSW6dLnzMJPlsK9kJ6QgKOyoSb8EL8RTVVJmTkxETCPZZSt6XeiLkap8uclbhYnlDqSF2mecaaEUPVgfyh3oaOnKnYhIOmyR+Pb7YJOOmMNU21z07K3PziDWKcKC8=' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/encoder_8b10b/encoder_8b10b_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/encoder_8b10b/encoder_8b10b_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_encoder_8b10b.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/encoder_8b10b.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
