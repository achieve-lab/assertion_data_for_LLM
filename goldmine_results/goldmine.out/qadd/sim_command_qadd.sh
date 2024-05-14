#!/bin/bash

iverilog -g2001 -osimv -s qadd_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/qadd/qadd_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_fixed_point_arithmetic_modules/qadd.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_fixed_point_arithmetic_modules