#!/bin/bash

iverilog -g2001 -osimv -s gng_smul_16_18_sadd_37_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/gng_smul_16_18_sadd_37/gng_smul_16_18_sadd_37_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_gaussian_noise_generator/gng_smul_16_18_sadd_37.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_gaussian_noise_generator