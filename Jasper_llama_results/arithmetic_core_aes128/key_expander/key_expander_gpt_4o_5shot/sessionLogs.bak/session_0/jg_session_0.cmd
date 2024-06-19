# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 17:27:16 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 778335
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40169' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY+7CsJAEEVPFINY+B0iaCHapbaNItiGYOIbN8TEV6Of6p/Em8UIKZxh53Hv3GHWAbxnURRYaz4UXHym8p8572/hOdSt7Bt1ZP6qZWhV4mrE1esy4IQhYEPOTkhfSMhRbrgKz8WfFRO5ISUjJhLus9B0W9NrMRfVPd06YynuoJm7csxNXKgNkeqUodQrbYaOdIkQw17d6K+ivCuRKmBsr5zolq2qzP7gAxlcKQQ=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_aes128/key_expander/key_expander_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_aes128/key_expander/key_expander_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_key_expander.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/key_expander.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
