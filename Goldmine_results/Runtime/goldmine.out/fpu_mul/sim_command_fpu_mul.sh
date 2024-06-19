#!/bin/bash

iverilog -g2001 -osimv -s fpu_mul_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/fpu_mul/fpu_mul_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_double_fpu_verilog/fpu_mul.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_double_fpu_verilog