#!/bin/bash

iverilog -g2001 -osimv -s accumulatorMUX_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/accumulatorMUX/accumulatorMUX_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_8-bit_piepelined_processor/accMUX.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_8-bit_piepelined_processor