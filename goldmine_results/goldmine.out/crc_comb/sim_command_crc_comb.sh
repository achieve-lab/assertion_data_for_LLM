#!/bin/bash

iverilog -g2001 -osimv -s crc_comb_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/crc_comb/crc_comb_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_crcahb/crc_comb.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_crcahb