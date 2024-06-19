#!/bin/bash

iverilog -g2001 -osimv -s mux4to1_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/mux4to1/mux4to1_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu/mux4to1.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu