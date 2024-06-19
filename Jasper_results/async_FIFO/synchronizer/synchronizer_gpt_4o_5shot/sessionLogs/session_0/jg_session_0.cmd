# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 12:16:25 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 126453
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33051' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY+7CsJAEEVPFINY+B0iaCHapbaNItgGiY9ExA15KKbRT/VP4s1ihBTOsLMz97HMOoD3rKoKG91SxcVnqfyF8/42nkM76rnTRtav1g29xtxIXJ0hE64YAk4UxELGQnZclIa78EJ8ppooDSk5B/bCfTZS96U+irmpH2nXFVtxGQ+5QiLpjbqYUq6UqdyhXoaBfIllz5pmfx31XolcAXO75ULKSF1uf/ABMrIpYg==' '-proj' '/data/vpulav2/Work/Jasper/async_FIFO/synchronizer/synchronizer_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/async_FIFO/synchronizer/synchronizer_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_synchronizer.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/synchronizer.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva

# Elaborate design and properties
elaborate -top synchronizer

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
