#!/bin/bash

iverilog -g2001 -osimv -s fht_1d_x8_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/fht_1d_x8/fht_1d_x8_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_2d_fht/fht_1d_x8.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_2d_fht