# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-08 15:18:35 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 29183
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40887' '-nowindow' '-style' 'windows' '-data' 'AAABEHicbY47CgJBEETfKi5iYOARDAU9gbGGqwimIv5FnMUvmOhRvcn6FFdYsJru6a6qbiYCuvcsy/igfLPEJPSMH6Lnt+lGFPGeS0Vm+Ci8UMmXc0ts1mmzJzBhxZmNTEtmys4IXOXP6kdragQOnFgwl08Y6a7qXqpc7Jv+dcBYbaDWN9deSvUf6Lg38ybU3EhlAlunxh/vGy80+iB8' '-proj' '/data/vpulav2/Work/Jasper/PSGShaper/PSGShaper/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/PSGShaper/PSGShaper/.tmp/.initCmds.tcl' 'FPV_PSGShaper.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGShaper.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
exit
