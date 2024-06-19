# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:42:29 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 74047
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43347' '-nowindow' '-style' 'windows' '-data' 'AAABYniclY67CsJAEEVvFINY+CGCNmIXLMUuimAbQjQ+UDfkJdjop/on8WQxQkpn2N2ZM3cu60jynlVVyUb3weXK14L8hfP+Fp6jdtR9p03Wr9Yr9ZrlRuJyhhrrJqNABxU6QUaQUBfS6A4vmGfcCWmUKtdeO7ivDeo+6phJST3nryttmUU4lDhE1Cn60G7k7OfWu1YYeExmmkAjqDTALWHD6Ey3/NMnsL8OdeVM6Wawo9XW8QFC2DHX' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_read_total_coeffs/cavlc_read_total_coeffs_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_read_total_coeffs/cavlc_read_total_coeffs_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_cavlc_read_total_coeffs.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_read_total_coeffs.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
