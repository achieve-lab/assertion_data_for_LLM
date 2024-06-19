# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-05 17:42:17 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 41325
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41885' '-nowindow' '-style' 'windows' '-data' 'AAABEHicbY7bCgFhFIW/IZNcuPAILhVPMHfKLVJuJacIM87lhkf1JuMbGTVl7f59WGvt3R8A0SNNUz4o300hfXrGD8Hr20QBRWRzqcgMn4UKlXw5t4S+Om32xExYcWEt05KZsjVibvIX9ZM5MWKOnFkwl+8z0l3VvVS52jf964Cx2kHXTfeJrnmn3pGZeRNqbiTeidk4Nf54M7wBXsYhfA==' '-proj' '/data/vpulav2/Work/Jasper/qtwosComp/qtwosComp/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/qtwosComp/qtwosComp/.tmp/.initCmds.tcl' 'FPV_qtwosComp.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/qtwosComp.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
exit
