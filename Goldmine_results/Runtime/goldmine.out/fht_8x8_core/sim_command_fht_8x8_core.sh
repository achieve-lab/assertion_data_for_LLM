#!/bin/bash

iverilog -g2001 -osimv -s fht_8x8_core_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/fht_8x8_core/fht_8x8_core_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_2d_fht/fht_8x8_core.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_2d_fht