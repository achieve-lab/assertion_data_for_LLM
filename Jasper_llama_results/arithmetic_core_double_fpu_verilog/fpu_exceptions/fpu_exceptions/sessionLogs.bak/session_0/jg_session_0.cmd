# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-02 19:41:50 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 112885
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38269' '-nowindow' '-style' 'windows' '-data' 'AAABJHicfY5NDgFBFIS/JiZi4QROIDjBrG2HSGxFxpARme5gEBuO6iatWoykN+ql30/Vq5c2QPrw3vNB+66UkDFV/GBe3yY1xAhzK2bmz6hCpzE3K4lenzEVlhU7akoxQzFrDgrLVXwt/aTsFJYjZwo24jMW2u5qeyvlon6kv85YSgtMrVpwI1d2cpVyh0sT9bmuQ09ep4uWvabBX1fAG1NBJc4=' '-proj' '/data/vpulav2/Work/Jasper/fpu_exceptions/fpu_exceptions/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/fpu_exceptions/fpu_exceptions/.tmp/.initCmds.tcl' 'FPV_fpu_exceptions.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fpu_exceptions.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top fpu_exceptions
exit
