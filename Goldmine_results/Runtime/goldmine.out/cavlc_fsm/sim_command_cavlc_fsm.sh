#!/bin/bash

iverilog -g2001 -osimv -s cavlc_fsm_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/cavlc_fsm/cavlc_fsm_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_cavlc_decoder/cavlc_fsm.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_cavlc_decoder