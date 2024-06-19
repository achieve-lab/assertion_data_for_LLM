# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-28 15:28:09 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 3606
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34075' '-nowindow' '-style' 'windows' '-data' 'AAABRHiclYxBCsJADEXfKBZx4UFEPUHX3VYR3JZaW1HEKdVWcKNH9Sbj72CFLk2YTPLz8wwQPp1z+Bg+VAJiIuUvzPvbhIZ+tPOgr6xfvR9G3XFnCfSmLLhgSThQc5Qyk5JyVlru0mvtr6ql0lJxI2cvPWYj91juQpvGgyNWbLXLRGhEyNRX8qf+ovKshJ2UwrNykZciZvLCRKxSquWkaf4XpY0PnXIsEA==' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_cavlc_decoder/cavlc_read_run_befores/cavlc_read_run_befores/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_cavlc_decoder/cavlc_read_run_befores/cavlc_read_run_befores/.tmp/.initCmds.tcl' 'FPV_cavlc_read_run_befores.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_read_run_befores.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top cavlc_read_run_befores
