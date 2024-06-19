# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 12:16:21 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 126326
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36613' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY+7CsJAEEVPFINY+B0iKCiWqW2jCLZB4iMRcUMeimn0U/2TeLMYIYUz7OzMfSyzDuA9q6rCRrdUcfFZKn/hvL+N59COeu60kfWrdUOvMTcSV2fIhCuGgBMFsZCxkB0XpeEuvBCfqSZKQ0rOgb1wn43UfamPYm7qR9p1xVZcxkOukEh6oy6mlCtlKneol2EgX2LZs6b5X0e9VyJXwMJuOZMyUpfbH3wAMnopXg==' '-proj' '/data/vpulav2/Work/Jasper/async_FIFO/synchronizer/synchronizer_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/async_FIFO/synchronizer/synchronizer_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_synchronizer.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/synchronizer.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva

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
