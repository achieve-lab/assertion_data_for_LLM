# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 19:16:25 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 886310
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41751' '-nowindow' '-style' 'windows' '-data' 'AAABTHicjY/LCsIwEEVPFYu48EMExQfuiku3VQRxV3zUF2KKbRXd6Kf6J/U2WKE7Z8hkcmfmJHEA75llGdaqDwUXn7H8Z877m3gOZcvPlbIyfZV2qBXDRYur1aTNGUPAjpSDlJaUJSe54SY9VT1WjOSGCwkhG+k+M3XX1b1V5aq8r7dOmFtWqNija30lXixlIS3mLt6ajjhr3QENESJxDUedRn/M5vxI8wEDcYa2O2YvQmL/9QFFESsB' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_sync/ge_1000baseX_sync_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_sync/ge_1000baseX_sync_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_ge_1000baseX_sync.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ge_1000baseX_sync.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
