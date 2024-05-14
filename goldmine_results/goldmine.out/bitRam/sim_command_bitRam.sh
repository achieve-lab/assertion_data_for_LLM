#!/bin/bash

iverilog -g2001 -osimv -s bitRam_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/bitRam/bitRam_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_8-bit_piepelined_processor/ramBit.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_8-bit_piepelined_processor