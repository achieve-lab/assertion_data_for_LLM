#!/bin/bash

iverilog -g2001 -osimv -s alu_datapath_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/alu_datapath/alu_datapath_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu/alu_datapath.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu