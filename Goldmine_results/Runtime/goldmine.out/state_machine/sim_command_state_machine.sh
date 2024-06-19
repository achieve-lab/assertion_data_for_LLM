#!/bin/bash

iverilog -g2001 -osimv -s state_machine_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/state_machine/state_machine_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_fpga-based_median_filter/state_machine.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_fpga-based_median_filter