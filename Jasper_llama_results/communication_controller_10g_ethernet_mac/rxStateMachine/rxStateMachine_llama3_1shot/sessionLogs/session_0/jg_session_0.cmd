# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:26:19 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 30240
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41021' '-nowindow' '-style' 'windows' '-data' 'AAABPnicfY/NCoJQEIWPRRItepCoIIJWrtuFRdBWxH40yiumFW3qUXsT+5QM3DTDnZ9zzgxzLUnOsygKVdZ+EGy5muM/s97fwrHUtLJvNZHVq5GlTj1cS2xeXyPFMvJ0UK4IZADi64Qb3cBz+AsxwY1SZdppC+5qjbqLeg9zpR5y61IbuFR32Iw9pXpBDhSyPaYbgwVsl3rMJmiNjnSzv1NedZGvM29KN+GmkMms+skHYRUqNw==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxStateMachine/rxStateMachine_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxStateMachine/rxStateMachine_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_rxStateMachine.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxStateMachine.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top rxStateMachine

# Set up Clocks and Resets
clock rxclk
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
