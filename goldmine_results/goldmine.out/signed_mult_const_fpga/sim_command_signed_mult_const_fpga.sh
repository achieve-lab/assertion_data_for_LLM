#!/bin/bash

iverilog -g2001 -osimv -s signed_mult_const_fpga_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/signed_mult_const_fpga/signed_mult_const_fpga_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_2d_fht/signed_mult_const_fpga.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_2d_fht