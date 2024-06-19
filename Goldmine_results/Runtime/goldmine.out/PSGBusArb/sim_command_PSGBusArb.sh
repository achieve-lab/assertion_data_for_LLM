#!/bin/bash

iverilog -g2001 -osimv -s PSGBusArb_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/PSGBusArb/PSGBusArb_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu/PSGBusArb.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu