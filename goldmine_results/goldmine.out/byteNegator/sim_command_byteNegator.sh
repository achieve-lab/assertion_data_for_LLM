#!/bin/bash

iverilog -g2001 -osimv -s byteNegator_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/byteNegator/byteNegator_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_8-bit_piepelined_processor/byteNegator.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_8-bit_piepelined_processor