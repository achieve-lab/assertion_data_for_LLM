#!/bin/bash

iverilog -g2001 -osimv -s crc_datapath_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/crc_datapath/crc_datapath_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_crcahb/crc_datapath.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_crcahb