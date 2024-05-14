#!/bin/bash

iverilog -g2001 -osimv -s s3_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/s3/s3_bench.v /data/vpulav2/Work/GoldMine/verilog/crypto_core_systemc-verilog_des/s3.v  -I/data/vpulav2/Work/GoldMine/verilog/crypto_core_systemc-verilog_des