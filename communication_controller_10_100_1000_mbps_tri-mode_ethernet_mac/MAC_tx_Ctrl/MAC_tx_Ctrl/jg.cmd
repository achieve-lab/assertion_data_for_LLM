# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-24 11:55:33 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 61883
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45791' '-nowindow' '-style' 'windows' '-data' 'AAABGHicdY69CsJAEIS/UwySwtJHsBD0CdJIwE6iCLYi/qFILsRExUYf1Tc5J2KEK5zldnZnZ5czQPRwzvFB864UkDBW/GBe3yIy+Kj6hq/Mnh5Dq16uLYFehwEpliV7Sg5S+lJWnBSWq/RS87NyprDkFGzZSE+Yy92We6fJRXVPf52y0GzCiFhccFOOxbnuDcVrMYTayqRZjuq6f/wV3k1BIgo=' '-proj' '/data/vpulav2/Work/Jasper/MAC_tx_Ctrl/MAC_tx_Ctrl/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/MAC_tx_Ctrl/MAC_tx_Ctrl/.tmp/.initCmds.tcl' 'FPV_MAC_tx_Ctrl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/MAC_tx_Ctrl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top MAC_tx_ctrl
exit
