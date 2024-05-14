#!/bin/bash

iverilog -g2001 -osimv -s fpu_round_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/fpu_round/fpu_round_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_double_fpu_verilog/fpu_round.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_double_fpu_verilog