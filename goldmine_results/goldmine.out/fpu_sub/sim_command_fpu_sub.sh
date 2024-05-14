#!/bin/bash

iverilog -g2001 -osimv -s fpu_sub_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/fpu_sub/fpu_sub_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_double_fpu_verilog/fpu_sub.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_double_fpu_verilog