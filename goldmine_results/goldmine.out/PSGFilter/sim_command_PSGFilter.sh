#!/bin/bash

iverilog -g2001 -osimv -s PSGFilter_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/PSGFilter/PSGFilter_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu/PSGFilter.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu