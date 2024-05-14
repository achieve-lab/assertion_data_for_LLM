#!/bin/bash

iverilog -g2001 -osimv -s sBox_8_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/sBox_8/sBox_8_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_aes128/sBox_8.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_aes128