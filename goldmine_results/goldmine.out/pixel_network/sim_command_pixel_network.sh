#!/bin/bash

iverilog -g2001 -osimv -s pixel_network_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/pixel_network/pixel_network_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_fpga-based_median_filter/pixel_network.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_fpga-based_median_filter