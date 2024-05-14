#!/bin/bash

iverilog -g2001 -osimv -s barrel_shifter_simple_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/barrel_shifter_simple/barrel_shifter_simple_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu/barrel_shifter_simple.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu