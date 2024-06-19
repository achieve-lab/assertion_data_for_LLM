# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-08 15:09:32 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 27296
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39947' '-nowindow' '-style' 'windows' '-data' 'AAABCHicVY5NCsIwEIW/KBbpwiN4AEFBcNm12yqCWxH/UNQp1aq40aN6k/harJA3ZCZ582USByQv7z2Vmk+liJSx4i/3+W0SR6jy3Aid6Tuo0Kov10ik1aHPGWPBjoK9nJ6cJUeFcZdfqH9RzhRGzpUNa/kpM9Ft0Vt1btp39dcJc/VO4h+MxBpDBqorzYNYdKYZxqF6O+RKfQE0rx8e' '-proj' '/data/vpulav2/Work/Jasper/mux4to1/mux4to1/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/mux4to1/mux4to1/.tmp/.initCmds.tcl' 'FPV_mux4to1.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/mux4to1.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
exit
