#!/bin/bash

iverilog -g2001 -osimv -s key_expander_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/key_expander/key_expander_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_aes128/key_expander.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_aes128