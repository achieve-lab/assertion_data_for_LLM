# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 13:04:13 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 36941
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38891' '-nowindow' '-style' 'windows' '-data' 'AAABOnicfY/NCsJADIS/Khbx4IMIehC99dyb1h/wWoqtf6hbtFXwoo/qm9TpYoVeTEg2mcmErAN4z6IosNZ8KLkE+PKfOe9v4TnUrewbdWT+qr3QqsTViKvo0ueMIWRLzl5IT0jEUW64C8/FX5VTueFCRkIsPGCp6bamN2JuVukzYyVuwUT8VFWk2Viqcn+iTQPp19oNHSlTMYaDutEfTWiviTgphurGumcnXWZ/8QFsqiiU' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/RMON_addr_gen/RMON_addr_gen_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/RMON_addr_gen/RMON_addr_gen_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_RMON_addr_gen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/RMON_addr_gen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top RMON_addr_gen

# Set up Clocks and Resets
clock Clk
reset Reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
