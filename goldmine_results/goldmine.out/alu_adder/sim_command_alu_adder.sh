#!/bin/bash

iverilog -g2001 -osimv -s alu_adder_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/alu_adder/alu_adder_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu/alu_adder.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu