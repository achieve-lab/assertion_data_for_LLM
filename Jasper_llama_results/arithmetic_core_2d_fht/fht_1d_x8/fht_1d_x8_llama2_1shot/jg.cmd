# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 10:32:17 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 36244
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42379' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY5PD8FAEMV/SzTi4EM4ChJODj27lkhcmwb1J9hGFXHho/om9bpRSRNvsrMz772ZXQP4zzzPcag/lDwCJoofzPtb+IYqir5WZWavyg2Ncri0eDpt+pywhGzI2Inpiok4KCw38Zn0VDlRWM5cWLMSHzCXuyl3LOWquqO/TllIi9nKFzJ0zjtjBuqX2gktTSTaY9mr6/3xhu71iKPOyCmpPFauAh/h2SVs' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/fht_1d_x8/fht_1d_x8_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/fht_1d_x8/fht_1d_x8_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_fht_1d_x8.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_1d_x8.v \
  ${RTL_PATH}/fht_bfly_noFF.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

  

# Elaborate design and properties
elaborate -top fht_1d_x8

# Set up Clocks and Resets
clock sclk
reset rstn

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report

exit
