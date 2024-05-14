#!/bin/bash

iverilog -g2001 -osimv -s PSGEnvGen_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/PSGEnvGen/PSGEnvGen_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu/PSGEnvGen.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu