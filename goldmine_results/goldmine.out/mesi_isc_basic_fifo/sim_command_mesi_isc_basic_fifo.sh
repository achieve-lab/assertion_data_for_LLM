#!/bin/bash

iverilog -g2001 -osimv -s mesi_isc_basic_fifo_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/mesi_isc_basic_fifo/mesi_isc_basic_fifo_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_mesi_coherency_intersection_controller/mesi_isc_basic_fifo.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_mesi_coherency_intersection_controller