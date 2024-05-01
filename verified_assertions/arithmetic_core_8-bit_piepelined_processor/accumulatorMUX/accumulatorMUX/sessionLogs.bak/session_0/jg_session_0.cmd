# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-19 21:45:36 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 280225
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44719' '-nowindow' '-style' 'windows' '-data' 'AAABFHicVY7NDsFQEIW/SzRi4Qk8gYQn6NquKRFiJ039hJTb0CI2PKo3qeNSyZ2T+TtzZjIGCB9VVeGseVcIiBkJfzOvXxEafPv0DZ+ZPL0MrXq5lgTyLgOOWJZsKdmJ6YtJyATLVXyp+VkxFywnCtasxMdMpW5LvdHkorqnX8fMNUtIhUhbN4baSHUNOtLmumDZO/VXVXKQZ+oKdz9ixsL99wbN7iHh' '-proj' '/data/vpulav2/Work/Jasper/accumulatorMUX/accumulatorMUX/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/accumulatorMUX/accumulatorMUX/.tmp/.initCmds.tcl' 'FPV_accMux.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/accMUX.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/cleaned_property.sva

# Elaborate design and properties
elaborate -top accumulatorMUX

# Set up Clocks and Resets
clock -infer 
reset DEFAULT_RESET
exit
