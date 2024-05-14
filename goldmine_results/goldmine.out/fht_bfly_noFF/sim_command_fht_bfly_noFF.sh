#!/bin/bash

iverilog -g2001 -osimv -s fht_bfly_noFF_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/fht_bfly_noFF/fht_bfly_noFF_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_2d_fht/fht_bfly_noFF.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_2d_fht