# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 19:49:15 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 148609
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45769' '-nowindow' '-style' 'windows' '-data' 'AAABRnichY/NCsJADIRnFYt48EEERfEmPXutIngtpf61qFu0VfCij+qb1M/VCj2ZkGRnMglZI8m/l2UpZ80byVOgKf4z8/w+fKO6vXGjzswftSq1quFK4hFd9XWUVaitCiUwPZhIe9zqCl/QP5Mz3OqkXGut4AMtULdRb+hceA+5daYlvRhd7KplOgdZ9n12JeABEcNIHeYz109Bk7+Tobss0oEYg0bctkOTux+9APPaLG0=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_crcahb/crc_control_unit/crc_control_unit_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_crcahb/crc_control_unit/crc_control_unit_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_crc_control_unit.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/crc_control_unit.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top crc_control_unit

# Set up Clocks and Resets
clock clk
reset rst_n

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
