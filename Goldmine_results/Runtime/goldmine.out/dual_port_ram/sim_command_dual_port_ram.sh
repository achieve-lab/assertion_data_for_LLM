#!/bin/bash

iverilog -g2001 -osimv -s dual_port_ram_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/dual_port_ram/dual_port_ram_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_fpga-based_median_filter/dual_port_ram.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_fpga-based_median_filter