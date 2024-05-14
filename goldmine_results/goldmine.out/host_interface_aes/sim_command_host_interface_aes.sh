#!/bin/bash

iverilog -g2001 -osimv -s host_interface_aes_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/host_interface_aes/host_interface_aes_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_aes128/host_interface.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_aes128