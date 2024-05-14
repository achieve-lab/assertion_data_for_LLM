#!/bin/bash

iverilog -g2001 -osimv -s PSGOutputSummer_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/PSGOutputSummer/PSGOutputSummer_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu/PSGOutputSummer.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu