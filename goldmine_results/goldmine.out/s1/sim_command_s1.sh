#!/bin/bash

iverilog -g2001 -osimv -s s1_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/s1/s1_bench.v /data/vpulav2/Work/GoldMine/verilog/crypto_core_systemc-verilog_des/s1.v  -I/data/vpulav2/Work/GoldMine/verilog/crypto_core_systemc-verilog_des