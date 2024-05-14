#!/bin/bash

iverilog -g2001 -osimv -s alu_controller_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/alu_controller/alu_controller_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu/alu_controller.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu