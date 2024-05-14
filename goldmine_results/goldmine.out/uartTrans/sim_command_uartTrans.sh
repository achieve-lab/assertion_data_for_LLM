#!/bin/bash

iverilog -g2001 -osimv -s uartTrans_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/uartTrans/uartTrans_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_8-bit_piepelined_processor/uartTrans.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_8-bit_piepelined_processor