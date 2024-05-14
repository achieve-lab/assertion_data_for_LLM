#!/bin/bash

iverilog -g2001 -osimv -s tcLoad_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/tcLoad/tcLoad_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_8-bit_piepelined_processor/tcLoad.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_8-bit_piepelined_processor