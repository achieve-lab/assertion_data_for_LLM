# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-13 19:39:33 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 157899
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46355' '-nowindow' '-style' 'windows' '-data' 'AAABNnicfY/NCoJAEMd/Fkl06EGifALPXS2CriJqX5QrmgVd6lF7k+3vkoGXZtjZmf/HsOsB4dNai4vhQ8UnYqn8hff+NqFHP9p50EfWr94No87cSXydKQsKDDF7Go5CZkISzkrDXXgjvlYtlYaKKzmZ8IiN1GOpd2Ju6ud664qtuIOUtZSxNhbOUUmVkKoLNKfaDhN5SzGGk6bgr6t9n5Er4+LY3P3gAyguKVI=' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_crcahb/host_interface/host_interface_goldmine/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_crcahb/host_interface/host_interface_goldmine/.tmp/.initCmds.tcl' 'FPV_host_interface.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/host_interface.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva
exit
