# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:37:37 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 31499
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38451' '-nowindow' '-style' 'windows' '-data' 'AAABRnichY+9CsJAEIQnikEsfBBBEcRGUttGEWxDiBoVzYX8KNroo/om8fMwQip3uf2Z2dm7cyR5j6qqZK19J7jyNcd/5ry+heeoaZ++1USWz0aWOrW4HnE5fQ2VyChQrFIHkAFIqBNudAUv4XNiihtlKrTVBtzXiuku0zuYC/WYty60hovYkJAzZmO25laVgeS6wYzoI26QeuhTGKMj3eyvMrAvC3XmTOim4HvUhf3RG+4GLGE=' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_register_syn/can_register_syn_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_register_syn/can_register_syn_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_can_register_syn.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_register_syn.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
