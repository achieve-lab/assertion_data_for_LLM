# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:18:01 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 63046
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42679' '-nowindow' '-style' 'windows' '-data' 'AAABOnicfY/LCoJQEIY/iyRa9CBBUVTQwrVbi6CtmHalUkwL2tSj9ib2e8jATTOcmTP/5TDHApxnURSYaD5UbDxc5S+s9/fiWNSjnBt1ZPGqdWhV5kpi63TpcyHGZ0fOQUhPSMBJGXMXnou/qibKmJSMDZFwj6XUbam3Ym7G6TJnJS6SJpS67KnmGWtGDFUH8od6GzpyJmJjjpomfzy+2SbgrDPWNNU+eykz84sPXFgoGw==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/decoder_8b10b/decoder_8b10b_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/decoder_8b10b/decoder_8b10b_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_decoder_8b10b.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/decoder_8b10b.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva

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
