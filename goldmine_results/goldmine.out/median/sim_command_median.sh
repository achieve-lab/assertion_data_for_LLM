#!/bin/bash

iverilog -g2001 -osimv -s median_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/median/median_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_fpga-based_median_filter/median.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_fpga-based_median_filter