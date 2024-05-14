#!/bin/bash

iverilog -g2001 -osimv -s outputReg_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/outputReg/outputReg_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_8-bit_piepelined_processor/outputReg.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_8-bit_piepelined_processor