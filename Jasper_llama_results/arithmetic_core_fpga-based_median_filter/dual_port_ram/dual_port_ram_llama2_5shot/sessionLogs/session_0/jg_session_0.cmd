# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 16:27:36 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 82283
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37551' '-nowindow' '-style' 'windows' '-data' 'AAABOnicfY+7CsJAEEVPFINY+CGCFqJd6rRRBNslGF9B3aCJgo1+qn8SbxYTSOMMOztzH8usBwSvsixx0X2q+ESEyia8z68JPNpRzZ02sny3bujV5lri6wwZc8Fi2FNwFDISEnNSWh7CC/E31UxpuZKzJREesZK6L/VOzN05QxasxSXSV2+YxmNUY85M1G/EwEDOTKgl1TT74zFum6qLmWqaa5+DNLn7xRfH5inI' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_fpga-based_median_filter/dual_port_ram/dual_port_ram_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_fpga-based_median_filter/dual_port_ram/dual_port_ram_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_dual_port_ram.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/dual_port_ram.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -bbox_m dual_port_ram

# Set up Clocks and Resets
clock clk
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
