#!/bin/bash

iverilog -g2001 -osimv -s inputRegister_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/inputRegister/inputRegister_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_8-bit_piepelined_processor/inputReg.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_8-bit_piepelined_processor