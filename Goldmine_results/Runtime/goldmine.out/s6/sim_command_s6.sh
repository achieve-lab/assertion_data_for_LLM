#!/bin/bash

iverilog -g2001 -osimv -s s6_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/s6/s6_bench.v /data/vpulav2/Work/GoldMine/verilog/crypto_core_systemc-verilog_des/s6.v  -I/data/vpulav2/Work/GoldMine/verilog/crypto_core_systemc-verilog_des