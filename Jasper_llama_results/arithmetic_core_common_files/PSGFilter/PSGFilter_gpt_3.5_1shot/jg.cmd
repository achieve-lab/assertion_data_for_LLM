# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:00:58 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 811206
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39207' '-nowindow' '-style' 'windows' '-data' 'AAABLHicbY67CsJAEEXvKgax8CMsBQMidqm1TESwDeIzIm6IiYKNfqp/Es8GIwScYWfmPmYZIyl4lmWpKtoPiqdQM/IX5v0dAqNmONxqMotXo0uderm2eLy+RrrIKtZBhRKYIcxaZ9LqDl+gX6kpaZUp105b+FBL3F3ce5Qb84BbI63QIrQ5KOEX58/k0zcgqcdGCmN1Avl/vO6WlDnWBH1KH3PBkY28uvsDJk4liw==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_common_files/PSGFilter/PSGFilter_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_common_files/PSGFilter/PSGFilter_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_PSGFilter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGFilter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
