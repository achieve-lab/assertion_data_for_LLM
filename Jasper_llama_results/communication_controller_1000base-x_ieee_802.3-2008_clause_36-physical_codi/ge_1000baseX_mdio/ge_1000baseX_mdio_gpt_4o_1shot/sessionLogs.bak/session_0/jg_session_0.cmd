# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 19:28:20 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 899036
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38233' '-nowindow' '-style' 'windows' '-data' 'AAABSnichY/NCsJADIS/Khbx4IMIihWPPXutIoi34k/VirrFtgpe9FF9kzpdrNCTGTabTJLZrAP4z6IosNZ8yLkETISfOe9v4DvUrcwbdWb2qt3QqoarFlenS58LhpA9ObGYnpgVJ8FwF5+rnsonguFKRsRWfMBc3W1171S5KR5p1ykLqxXJewwt1tJLxSzFnTUbS2cgnY3egI4UEukajna5/7OlfqL5kLHNPHUcFGX2Vx/puirk' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_mdio/ge_1000baseX_mdio_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_mdio/ge_1000baseX_mdio_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_ge_1000baseX_mdio.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ge_1000baseX_mdio.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
