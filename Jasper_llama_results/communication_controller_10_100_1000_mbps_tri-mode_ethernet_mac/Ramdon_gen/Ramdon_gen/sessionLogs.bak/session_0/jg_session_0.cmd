# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-25 14:52:13 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 2928
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39303' '-nowindow' '-style' 'windows' '-data' 'AAABFHicbY45CgJREETfKA5iYOQRjAQ9gbHpuICpiBuK+sUVTPSo3mR8I44wYDe/l+qq4kdA95GmKZ8o3y0xCT3zF9HrO3QjipHtpSIyeBY6VHJxTol9ddrsCUxYcWEt0hKZsjUDN/GL95P1YAaOnFkwF08Yya7KXnq5Ojf9a5+xt6EOO1lBbea8sHdUznSFmpqDToGNW+MvO4s32aAh2g==' '-proj' '/data/vpulav2/Work/Jasper/Ramdon_gen/Ramdon_gen/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/Ramdon_gen/Ramdon_gen/.tmp/.initCmds.tcl' 'FPV_Ramdon_gen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/Ramdon_gen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva



exit
