# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 19:43:54 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 145564
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46451' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY7NCsJADISnikU8+BAeRQU996zHVgSvpfhXRd1SWwUv+qi+yfq5WKFgQrLJzCRZT1LwsNbKWfNO8hVqiv/Me32LwFPdPn2jjsyftVdqVcOVxCe6Guoso1g7ldqD9EESHXGjG3gJfyFnuFGuQhutwUMtULdRb2Gu1D3+GmkJF8HNiJRNGfpcI+ZW7JQ6TGQgRge6wR9t7K4nOhETujH3U/SF+/Ub3o0lfA==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGShaper/PSGShaper_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGShaper/PSGShaper_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_PSGShaper.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGShaper.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top PSGShaper

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
