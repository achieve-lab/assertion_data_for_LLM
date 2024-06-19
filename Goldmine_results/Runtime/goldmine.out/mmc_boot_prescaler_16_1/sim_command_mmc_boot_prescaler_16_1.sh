#!/bin/bash

iverilog -g2001 -osimv -s mmc_boot_prescaler_16_1_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/mmc_boot_prescaler_16_1/mmc_boot_prescaler_16_1_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu/mmc_boot_prescaler.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu