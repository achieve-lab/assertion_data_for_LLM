# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 19:17:57 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 65668
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44521' '-nowindow' '-style' 'windows' '-data' 'AAABRnichY9BC4JAEIWfRRId+iFBEUGX8BbUUUPoKlKmRblSWtClfmr/xL4kA0/NY2d33pt5zFqSnEdZlqqifSfZcrUAv7Be34djqRmfutVkVs/GLXXq4brF5vQ1VCqjQLEK7WEGMKGOwOgGX6BfyBkwOitXpC28K5/uLt07lCvvMbt6WqN5aEvNleCUggg3H48TiPAY4bKBk3rMZzBGB6rZ38mg2iykCjWhmrJbwnRe/egNjyIrOg==' '-proj' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGChannelSummer/PSGChannelSummer_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGChannelSummer/PSGChannelSummer_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_PSGChannelSummer.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGChannelSummer.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top PSGChannelSummer
exit