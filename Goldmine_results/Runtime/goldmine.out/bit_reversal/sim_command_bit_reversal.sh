#!/bin/bash

iverilog -g2001 -osimv -s bit_reversal_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/bit_reversal/bit_reversal_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_crcahb/bit_reversal.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_crcahb