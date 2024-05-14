#!/bin/bash

iverilog -g2001 -osimv -s gng_ctg_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/gng_ctg/gng_ctg_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_gaussian_noise_generator/gng_ctg.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_gaussian_noise_generator