#!/bin/bash

iverilog -g2001 -osimv -s gng_lzd_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/gng_lzd/gng_lzd_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_gaussian_noise_generator/gng_lzd.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_gaussian_noise_generator