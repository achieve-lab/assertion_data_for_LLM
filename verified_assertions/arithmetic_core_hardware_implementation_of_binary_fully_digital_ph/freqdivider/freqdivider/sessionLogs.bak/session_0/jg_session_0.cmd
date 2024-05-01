# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-22 13:22:24 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 391292
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39341' '-nowindow' '-style' 'windows' '-data' 'AAABGHicdY7NCgFhFIafIZMsLF2CheIKZm2LlK3E0Ei+8V82XKo7GQ+hZuE9fefnfd9z+iIguRVFwRvVqylmQN/4IXp8miSijNdcKTOje6lC7bv8tcS+Jl22BKasOJHJdGRmbIzARf6kfjDnRmDPkZSF/ICx7rrupcrZvu1fh0zUlvpSdvoylcyayvTcnXsXGm7lMoG1U+uP/4UnfUkjFA==' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/freqdivider/freqdivider/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/freqdivider/freqdivider/.tmp/.initCmds.tcl' 'FPV_freqdivider.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/freqdivider.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
exit
