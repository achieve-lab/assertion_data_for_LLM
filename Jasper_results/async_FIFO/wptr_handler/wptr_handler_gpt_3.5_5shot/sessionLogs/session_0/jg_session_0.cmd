# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 12:34:45 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 152009
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43267' '-nowindow' '-style' 'windows' '-data' 'AAABeHicrZC9CsJAEITnFCVY+BwiaKPpUttGEWyD+Bcl5EJMDNjoo/om8UswQgo7d7n9mdk59s5I8h5lWaq27p3Ql68F/jXz+hSeUduqvtNGVs9WlnqNuBlxOENNFMsq0Em5ziBjkK0i3KoAz+GvxAS3SpXpoD24r/Uf9A7TR5gb9Yi3LrWBK0AyZgOF3BUzH6FKNQXdUUsDdAmI1YVu/lNR7VUxgWaoXbLLNiG6rP6DN2fWNGw=' '-proj' '/data/vpulav2/Work/Jasper/async_FIFO/wptr_handler/wptr_handler_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/async_FIFO/wptr_handler/wptr_handler_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_wptr_handler.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/wptr_handler.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -top wptr_handler

# Set up Clocks and Resets
clock wclk
reset wrst_n

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
