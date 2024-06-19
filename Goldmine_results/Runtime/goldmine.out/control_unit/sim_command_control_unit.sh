#!/bin/bash

iverilog -g2001 -osimv -s control_unit_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/control_unit/control_unit_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_aes128/control_unit.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_aes128