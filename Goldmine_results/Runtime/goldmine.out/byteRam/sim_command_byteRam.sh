#!/bin/bash

iverilog -g2001 -osimv -s byteRam_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/byteRam/byteRam_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_8-bit_piepelined_processor/ramByte.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_8-bit_piepelined_processor