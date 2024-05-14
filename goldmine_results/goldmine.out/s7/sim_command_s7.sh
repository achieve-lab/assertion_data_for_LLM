#!/bin/bash

iverilog -g2001 -osimv -s s7_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/s7/s7_bench.v /data/vpulav2/Work/GoldMine/verilog/crypto_core_systemc-verilog_des/s7.v  -I/data/vpulav2/Work/GoldMine/verilog/crypto_core_systemc-verilog_des