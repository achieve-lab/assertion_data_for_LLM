#!/bin/bash

iverilog -g2001 -osimv -s PSGNoteGen_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/PSGNoteGen/PSGNoteGen_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu/PSGNoteGen.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu