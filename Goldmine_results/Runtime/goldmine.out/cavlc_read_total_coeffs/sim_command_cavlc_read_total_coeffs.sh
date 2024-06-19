#!/bin/bash

iverilog -g2001 -osimv -s cavlc_read_total_coeffs_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/cavlc_read_total_coeffs/cavlc_read_total_coeffs_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_cavlc_decoder/cavlc_read_total_coeffs.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_cavlc_decoder