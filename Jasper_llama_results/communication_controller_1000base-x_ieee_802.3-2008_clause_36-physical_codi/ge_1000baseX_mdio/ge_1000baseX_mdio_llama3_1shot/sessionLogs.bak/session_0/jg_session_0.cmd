# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:29:40 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 71578
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:32851' '-nowindow' '-style' 'windows' '-data' 'AAABSnichY9PD8FAEMV/JRpx8EEkxJ9rz64lEnFriqoKttGWxIWP6pvUs1FJT2ayszNv3ryddQDvUZYl1pp3BRefqfxnzuubeA51+9SNOjJ/1m5oVcMVxdXp0ueMISCmIBHSExJylBtuwgv1M8VUbriQE7EV7rMQuy32Tp2r8rF2nbG0WpHiiKH1tfQyISthJ80m0hlIZ6M3oCOFVLqGg13u/2xgtwtVh0wsN2MvPLe/egPolirR' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_mdio/ge_1000baseX_mdio_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_mdio/ge_1000baseX_mdio_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_ge_1000baseX_mdio.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ge_1000baseX_mdio.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva
exit
