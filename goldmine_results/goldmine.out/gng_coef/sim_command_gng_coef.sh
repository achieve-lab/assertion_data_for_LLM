#!/bin/bash

iverilog -g2001 -osimv -s gng_coef_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/gng_coef/gng_coef_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_gaussian_noise_generator/gng_coef.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_gaussian_noise_generator