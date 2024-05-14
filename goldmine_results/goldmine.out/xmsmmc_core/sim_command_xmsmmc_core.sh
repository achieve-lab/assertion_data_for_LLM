#!/bin/bash

iverilog -g2001 -osimv -s xmsmmc_core_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/xmsmmc_core/xmsmmc_core_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu/xmsmmc_core.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu