#!/bin/bash

iverilog -g2001 -osimv -s fpu_addsub_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/fpu_addsub/fpu_addsub_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_double_fpu_verilog/fpu_addsub.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_double_fpu_verilog