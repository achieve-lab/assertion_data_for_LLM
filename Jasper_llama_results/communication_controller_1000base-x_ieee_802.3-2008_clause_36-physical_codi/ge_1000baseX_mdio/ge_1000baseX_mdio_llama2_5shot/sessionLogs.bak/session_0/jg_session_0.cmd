# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:25:59 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 68893
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45467' '-nowindow' '-style' 'windows' '-data' 'AAABSnichY9BD8FAEIVfiUYc/BAJQeLWs2uJRNyaoqqCbbQlceGn+if12aikJ/Oys7NvZt7MOpK8R1mWsta841z5moKfOa9v4Dmq2+fdqDPzZ+2WWlVzVeJyuurrLKNAsQolMD2YUEdgdIMvyGf4FBhdlCvSFt7Xguo21TsyV+Ixu860tFoRfqShxRq9DGYFd6I3QWeAzoYZUgeFFF2jg13uf29gtwt5h8wMNKFiD5/bX70B6Lwq1A==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_mdio/ge_1000baseX_mdio_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_mdio/ge_1000baseX_mdio_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_ge_1000baseX_mdio.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ge_1000baseX_mdio.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva
exit
