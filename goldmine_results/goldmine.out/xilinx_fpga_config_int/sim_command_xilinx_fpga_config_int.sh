#!/bin/bash

iverilog -g2001 -osimv -s xilinx_fpga_config_int_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/xilinx_fpga_config_int/xilinx_fpga_config_int_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu/xilinx_fpga_config_int.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_ecpu_alu