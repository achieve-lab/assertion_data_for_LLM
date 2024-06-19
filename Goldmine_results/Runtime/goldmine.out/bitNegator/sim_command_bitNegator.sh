#!/bin/bash

iverilog -g2001 -osimv -s bitNegator_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/bitNegator/bitNegator_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_8-bit_piepelined_processor/bitNegator.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_8-bit_piepelined_processor