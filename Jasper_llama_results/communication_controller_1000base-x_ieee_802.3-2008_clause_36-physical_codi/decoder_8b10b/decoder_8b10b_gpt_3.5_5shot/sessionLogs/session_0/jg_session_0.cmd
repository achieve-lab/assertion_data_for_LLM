# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 19:14:37 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 884683
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46477' '-nowindow' '-style' 'windows' '-data' 'AAABPHicfY/LCoJQEIY/iyRa9CBBUYTRwrVbi6CtlGYXoiOmBW3qUXsT+5UM3DTDmTnzXw5zLMB9FkVBFe2Hio2Pp/yF9f5eXItmlHOriSxfjQ6d2lxLbJ0+Qy4YAvbkHIUMhGw4Kw134bn4q2qiNKRk7IiE+6yk7kodi7lVTo8Fa3GRNKHUZU81z9kyYaw6kj/U29CTMxFrOGma/fGUuyXyBUzld9QdbXSQNqv+8QGoPCgj' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/decoder_8b10b/decoder_8b10b_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/decoder_8b10b/decoder_8b10b_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_decoder_8b10b.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/decoder_8b10b.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -top decoder_8b10b

# Set up Clocks and Resets
clock RBYTECLK
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
