#!/bin/bash

iverilog -g2001 -osimv -s PSGShaper_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/PSGShaper/PSGShaper_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu/PSGShaper.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu