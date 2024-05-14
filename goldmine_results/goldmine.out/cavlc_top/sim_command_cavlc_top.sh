#!/bin/bash

iverilog -g2001 -osimv -s cavlc_top_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/cavlc_top/cavlc_top_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_cavlc_decoder/cavlc_top.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_cavlc_decoder