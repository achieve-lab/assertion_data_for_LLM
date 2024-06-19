# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 10:41:10 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 39983
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37837' '-nowindow' '-style' 'windows' '-data' 'AAABOnicfY9PD8FAEMV/JRpx8EEkXHDrudcSiWtTf6qkbENLuPBRfZN63aikFzOZ2Zn33uzOOoD3LMsSa+2HkkuAL/+Z8/4WnkPTqr7VROavxgmderiWuIo+Q04YQnYU7IUMhESkcsNNeCH+opzJDWdytmyEByyk7kodi7naSZ8ZS3ExiXQhK1Upd1XVG9VfRsLXwqCnyUz3GQ7qJn9mQrtNxFExVjfVPom43P7iA6AQKSM=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/fht_bfly_noFF/fht_bfly_noFF_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/fht_bfly_noFF/fht_bfly_noFF_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_fht_bfly_noFF.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_bfly_noFF.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
