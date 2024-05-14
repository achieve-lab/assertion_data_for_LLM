#!/bin/bash

iverilog -g2001 -osimv -s data_swap_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/data_swap/data_swap_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_aes128/data_swap.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_aes128