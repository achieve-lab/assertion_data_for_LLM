#!/bin/bash

iverilog -g2001 -osimv -s mmc_cmd_select_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/mmc_cmd_select/mmc_cmd_select_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu/mmc_cmd_select.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu