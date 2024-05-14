#!/bin/bash

iverilog -g2001 -osimv -s gng_smul_16_18_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/gng_smul_16_18/gng_smul_16_18_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_gaussian_noise_generator/gng_smul_16_18.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_gaussian_noise_generator