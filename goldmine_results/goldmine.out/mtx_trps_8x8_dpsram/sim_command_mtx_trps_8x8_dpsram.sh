#!/bin/bash

iverilog -g2001 -osimv -s mtx_trps_8x8_dpsram_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/mtx_trps_8x8_dpsram/mtx_trps_8x8_dpsram_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_2d_fht/mtx_trps_8x8_dpsram.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_2d_fht