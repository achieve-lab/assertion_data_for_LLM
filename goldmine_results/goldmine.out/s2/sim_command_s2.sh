#!/bin/bash

iverilog -g2001 -osimv -s s2_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/s2/s2_bench.v /data/vpulav2/Work/GoldMine/verilog/crypto_core_systemc-verilog_des/s2.v  -I/data/vpulav2/Work/GoldMine/verilog/crypto_core_systemc-verilog_des