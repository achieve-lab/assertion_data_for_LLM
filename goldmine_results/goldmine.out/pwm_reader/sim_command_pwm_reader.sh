#!/bin/bash

iverilog -g2001 -osimv -s pwm_reader_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/pwm_reader/pwm_reader_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_unsigned_serial_divider/pwm_reader.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_unsigned_serial_divider