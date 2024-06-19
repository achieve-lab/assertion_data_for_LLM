# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-10 19:02:03 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 39045
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38185' '-nowindow' '-style' 'windows' '-data' 'AAABEHicbY7NCgFhFIafIZKFhUuwVFzBbLEcUraSv0hmwoyy4VLdyXjIqCnv6Ts/73nf0xcA4T3Pcz6o3kx1IobGD8Hz24QBZbznSpmZPEoVaoW5kNR9LXociZmzJWUn05VZcDBirvKp+7M5MWJOXFizko+Yqm6o3rjJ7Dv+dczM3djdiIHOzLq29vUtvQlNHYl3YvZO7T/aN14s9iA8' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_common_files/PSGEnvGen/PSGEnvGen/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_common_files/PSGEnvGen/PSGEnvGen/.tmp/.initCmds.tcl' 'FPV_PSGEnvGen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGEnvGen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top PSGEnvGen
exit
