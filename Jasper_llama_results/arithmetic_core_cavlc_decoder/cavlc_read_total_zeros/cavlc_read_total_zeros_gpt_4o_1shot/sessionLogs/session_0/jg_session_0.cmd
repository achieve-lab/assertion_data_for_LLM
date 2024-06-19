# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 17:48:58 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 800001
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44443' '-nowindow' '-style' 'windows' '-data' 'AAABXniclY/LCoJQEIY/iyRa9CBBQdDStVuLoK2I3YkUb4GbetTexH6HDFw2w7nMN//8nOMA3rNpGiyGtTaXAF/5C+f9vXgO/WjrQZ9sXr0TRt1wJ3G1psy5kxByouQiMhOJuCkTHuKl+rn2VJmQUXBgLx6wlXos9VGdyox91uzUi+VQySHWPZM+solC84V5h9SimeqchVgsBhN5pUavqvy/XNr3p+IhK/vNUuxsyjY+iIUxXA==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cavlc_decoder/cavlc_read_total_zeros/cavlc_read_total_zeros_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_cavlc_decoder/cavlc_read_total_zeros/cavlc_read_total_zeros_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_cavlc_read_total_zeros.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_read_total_zeros.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
