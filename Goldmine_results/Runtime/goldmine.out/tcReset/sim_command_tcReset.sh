#!/bin/bash

iverilog -g2001 -osimv -s tcReset_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/tcReset/tcReset_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_8-bit_piepelined_processor/tcReset.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_8-bit_piepelined_processor