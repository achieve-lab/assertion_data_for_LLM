#!/bin/bash

iverilog -g2001 -osimv -s qtwosComp_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/qtwosComp/qtwosComp_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_fixed_point_arithmetic_modules/qtwosComp.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_fixed_point_arithmetic_modules