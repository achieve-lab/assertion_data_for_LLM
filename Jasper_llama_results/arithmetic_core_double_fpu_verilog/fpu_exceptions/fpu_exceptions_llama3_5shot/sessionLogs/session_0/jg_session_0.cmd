# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 19:50:38 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 149793
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46773' '-nowindow' '-style' 'windows' '-data' 'AAABPnicfY/NDsFQEIXPJRqx8CCCjbDq2rZEYts0VbTBbWgRGx7Vm9TXRiXdmMmdn3PmTOYaSe6zKApV1n4QHHma4z8z72/hGjWt7FtNZPlqZKlTi+sRh9fXSCdZ+dopVwwyAAl0wK1u4Dn8hZjiVmdlirQB97Riusv0FuZKPeTWhdZwJZKTI90VElNUMepy05g6ZLvUQ5uy0Sqhm/1V+dVFgY68Cd0UbA+XVT/5AIiFKtM=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_double_fpu_verilog/fpu_exceptions/fpu_exceptions_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_double_fpu_verilog/fpu_exceptions/fpu_exceptions_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_fpu_exceptions.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fpu_exceptions.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva

# Elaborate design and properties
elaborate -top fpu_exceptions
exit
