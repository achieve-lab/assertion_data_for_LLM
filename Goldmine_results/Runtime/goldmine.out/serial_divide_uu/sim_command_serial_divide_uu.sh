#!/bin/bash

iverilog -g2001 -osimv -s serial_divide_uu_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/serial_divide_uu/serial_divide_uu_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_unsigned_serial_divider/serial_divide_uu.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_unsigned_serial_divider