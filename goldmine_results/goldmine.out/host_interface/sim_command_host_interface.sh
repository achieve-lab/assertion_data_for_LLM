#!/bin/bash

iverilog -g2001 -osimv -s host_interface_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/host_interface/host_interface_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_crcahb/host_interface.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_crcahb