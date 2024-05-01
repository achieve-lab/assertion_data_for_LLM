# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2022.06
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2022.06p002 64 bits
# build date: 2022.08.24 16:38:21 UTC
# ----------------------------------------
# started   : 2024-04-04 21:38:39 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 14146
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35413' '-nowindow' '-style' 'windows' '-data' 'AAABOHicJY/BSgMxFEXPIJTiQrroVwgtUlC66KIbXYhFUXAbRo1lZNoUZ6aKG3/VPxlP04S8+97NfTcvBbD47fuevE5+DCPuWPHItfGeZxFuuWTGnAuWvFLyRmRrFumoxClf5i80tCQ+zafytbtSl4yNTLSvO75U/B2RRWEYeM6YZGlgnU3hXKbMJkn7ILvVpmPnPjzSZsPgkE+qh6rfvdmbX3HDg6MHq6iyyh5r60amFCPf4kZ9nYdt/URt56kuOzsSH1ZjFSkPfVAFfWbqXP+JrTNo' '-proj' '/home/vpulav2/Work/Jasper/module_i2c/module_i2c/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/module_i2c/module_i2c/.tmp/.initCmds.tcl' 'FPV_verilog_sva_example.tcl'
# ----------------------------------------
#  Copyright (c) 2017 Cadence Design Systems, Inc. All Rights
#  Reserved.  Unpublished -- rights reserved under the copyright 
#  laws of the United States.
# ----------------------------------------

# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/module_i2c.v
#  ${RTL_PATH}/port_select.v \
#  ${RTL_PATH}/bridge.v \
#  ${RTL_PATH}/egress.v \
#  ${RTL_PATH}/ingress.v \
#  ${RTL_PATH}/top.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
  
# Elaborate design and properties
elaborate -top module_i2c

# Set up Clocks and Resets
clock PCLK
reset PRESETn

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report
:x
==============================================================
SUMMARY
==============================================================
           Properties Considered              : 216
                 assertions                   : 108
                  - proven                    : 33 (30.5556%)
                  - bounded_proven (user)     : 0 (0%)
                  - bounded_proven (auto)     : 0 (0%)
                  - marked_proven             : 0 (0%)
                  - cex                       : 75 (69.4444%)
                  - ar_cex                    : 0 (0%)
                  - undetermined              : 0 (0%)
                  - unknown                   : 0 (0%)
                  - error                     : 0 (0%)
                 covers                       : 108
                  - unreachable               : 4 (3.7037%)
                  - bounded_unreachable (user): 0 (0%)
                  - covered                   : 104 (96.2963%)
                  - ar_covered                : 0 (0%)
                  - undetermined              : 0 (0%)
                  - unknown                   : 0 (0%)
                  - error                     : 0 (0%)
clear
:x
exit
