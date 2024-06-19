# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-20 20:55:15 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 338607
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38245' '-nowindow' '-style' 'windows' '-data' 'AAABBHicVY5NCsIwFIS/KBYR8QSeQNATdN1VoRXBrRT/UEpTbKvgRo/qTeK0WCHzyEvezJcQA4Qv5xydhk+1gIRI9Zf5/A6hwVc7D3xn/fZ2GPWXeyTQmrGkwLLjTMNFzkJORq6yPOQ3yiv1UmW5UXPkID9hI3os+qTkrvNcf03ZKqvZE4vORK66KVc+EVvqBctV09SjWn0BtLAehA==' '-proj' '/data/vpulav2/Work/Jasper/tcLoad/tcLoad/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/tcLoad/tcLoad/.tmp/.initCmds.tcl' 'FPV_tcLoad.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/tcLoad.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
exit
