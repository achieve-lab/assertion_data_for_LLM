#!/bin/bash

iverilog -g2001 -osimv -s s5_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/s5/s5_bench.v /data/vpulav2/Work/GoldMine/verilog/crypto_core_systemc-verilog_des/s5.v  -I/data/vpulav2/Work/GoldMine/verilog/crypto_core_systemc-verilog_des