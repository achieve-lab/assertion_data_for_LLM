#!/bin/bash

iverilog -g2001 -osimv -s PSGChannelSummer_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/PSGChannelSummer/PSGChannelSummer_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu/PSGChannelSummer.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu