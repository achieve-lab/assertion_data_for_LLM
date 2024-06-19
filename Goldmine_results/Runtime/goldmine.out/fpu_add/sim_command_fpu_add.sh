#!/bin/bash

iverilog -g2001 -osimv -s fpu_add_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/fpu_add/fpu_add_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_double_fpu_verilog/fpu_add.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_double_fpu_verilog