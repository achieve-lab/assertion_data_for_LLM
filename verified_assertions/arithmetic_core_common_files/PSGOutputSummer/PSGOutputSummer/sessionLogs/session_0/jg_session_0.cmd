# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-08 15:29:37 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 31302
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44659' '-nowindow' '-style' 'windows' '-data' 'AAABKHichY5BCsIwFESnikVceAQPINgTdK3LVgpuRbSKYk1Qo+BGj+pN4muxQlbOkEn+/PmfRJLSp/deDboPJFamKfwhen8faaQQdd0JnfkruKVeO9xGYs5QE51ktNROTnucMc5KR2h0x3f0L6iFRmddVWqDn6kg3Se9pXPjnfDXXAt6Ob0ZCUfaNlqgFSzZkFCv2S8NmLY4Rgeq0Z+5Gh/IQyXi' '-proj' '/data/vpulav2/Work/Jasper/PSGOutputSummer/PSGOutputSummer/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/PSGOutputSummer/PSGOutputSummer/.tmp/.initCmds.tcl' 'FPV_PSGOutputSummer.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGOutputSummer.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top PSGOutputSummer

# Set up Clocks and Resets
clock clk_i
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
