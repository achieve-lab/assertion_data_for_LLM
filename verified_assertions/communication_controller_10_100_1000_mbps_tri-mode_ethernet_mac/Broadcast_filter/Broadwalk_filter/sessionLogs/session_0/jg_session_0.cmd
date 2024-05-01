# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-20 20:18:27 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 64860
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38063' '-nowindow' '-style' 'windows' '-data' 'AAABLHicXY7BCsJADERfFYt48Bs8C4of0JMHr1UEr0Valaq4pbUWvOin+id1ulhxnbDJZjIT4gHBo65rLLp3JZ+QheIL7/X5BB4umr7jMqunU6HXmluJrzdkwgVDxIGSVMxYzJazwlCJLzUvlDOFIefKjkR8yFrqvtR7TW76z3Trko1mc+mMtiTEyoU8kVSpdjbunKlqrA4G8mdWfVQ3+nFW9orTn7PBG3naJvI=' '-proj' '/data/vpulav2/Work/Jasper/Broadcast_filter/Broadwalk_filter/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/Broadcast_filter/Broadwalk_filter/.tmp/.initCmds.tcl' 'FPV_Broadcast_filter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/Broadcast_filter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top Broadcast_filter

# Set up Clocks and Resets
clock Clk
reset Reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all
