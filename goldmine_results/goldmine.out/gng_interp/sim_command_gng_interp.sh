#!/bin/bash

iverilog -g2001 -osimv -s gng_interp_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/gng_interp/gng_interp_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_gaussian_noise_generator/gng_interp.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_gaussian_noise_generator