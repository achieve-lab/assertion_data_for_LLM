#!/bin/bash

iverilog -g2001 -osimv -s fpu_div_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/fpu_div/fpu_div_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_double_fpu_verilog/fpu_div.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_double_fpu_verilog