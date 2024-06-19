#!/bin/bash

iverilog -g2001 -osimv -s uartRec_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/uartRec/uartRec_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_8-bit_piepelined_processor/uartRec.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_8-bit_piepelined_processor