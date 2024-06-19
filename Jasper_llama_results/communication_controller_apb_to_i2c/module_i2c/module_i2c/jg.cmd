# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-19 16:48:33 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 144107
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33077' '-nowindow' '-style' 'windows' '-data' 'AAABJnicVY6xCsJAEETnFINYWPkVghYWVqltowi2IWgMSvRC4kWx0U/1T+JLMEJ2ud3Z2bm5M5L8V1VVaqL/pHgKtCL/YT4/4Bt1o557XWbz7nRp0F5uJR5nrJmusgqVyOkEM4WJlJJWd3jHvqBmpFWum2Id4ANtUQ9RH9mU4CV/XWvHrkST41Z7JMwFTESP9aBf0KfgOV57kDTCJeOG1ZlpgsLyhmtUIT4LdHV8AbApJcc=' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_apb_to_i2c/module_i2c/module_i2c/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_apb_to_i2c/module_i2c/module_i2c/.tmp/.initCmds.tcl' 'FPV_verilog_sva_example.tcl'
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
exit
