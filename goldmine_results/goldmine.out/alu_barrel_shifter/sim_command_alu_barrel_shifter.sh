#!/bin/bash

iverilog -g2001 -osimv -s alu_barrel_shifter_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/alu_barrel_shifter/alu_barrel_shifter_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu/alu_barrel_shifter.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu