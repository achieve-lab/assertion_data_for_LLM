#!/bin/bash

iverilog -g2001 -osimv -s xmsmmc_minimal_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/xmsmmc_minimal/xmsmmc_minimal_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu/xmsmmc_minimal.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu