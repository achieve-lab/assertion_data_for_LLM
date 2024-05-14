#!/bin/bash

iverilog -g2001 -osimv -s fpu_exceptions_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/fpu_exceptions/fpu_exceptions_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_double_fpu_verilog/fpu_exceptions.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_double_fpu_verilog