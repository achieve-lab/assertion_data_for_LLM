# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:02:54 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 27801
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33549' '-nowindow' '-style' 'windows' '-data' 'AAABSnichY/NCoJQEIWPRRItepCgFkI7120tgrYiVlaYV/wpalOP2pvY1yUDV80wf+fMzJ3rSPIfTdPISv+OcxVogf7EeX0T31FXPnWvi6yenSgN2uG2xcXGmiqTUahEtY4gE5BIKWp0Ba/hS3yOGhWqtNMWPNCa7iHde5gLucetS23gYjZkxILehK2lnSpAIvIb3Awk5g1pxIYczuhkj/s/G9rrIp0xj2oOfmC+sr96A6bzLSY=' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_register_asyn/can_register_asyn_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_register_asyn/can_register_asyn_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_can_register_asyn.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_register_asyn.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top can_register_asyn

# Set up Clocks and Resets
clock clk
reset rst

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
