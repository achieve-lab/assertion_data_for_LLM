#!/bin/bash

iverilog -g2001 -osimv -s cavlc_len_gen_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/cavlc_len_gen/cavlc_len_gen_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_cavlc_decoder/cavlc_len_gen.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_cavlc_decoder