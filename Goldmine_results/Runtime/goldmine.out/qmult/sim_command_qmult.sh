#!/bin/bash

iverilog -g2001 -osimv -s qmult_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/qmult/qmult_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_fixed_point_arithmetic_modules/qmult.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_fixed_point_arithmetic_modules