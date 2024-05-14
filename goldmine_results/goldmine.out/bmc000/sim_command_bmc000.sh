#!/bin/bash

iverilog -g2001 -osimv -s bmc000_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/bmc000/bmc000_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_viterbi_tx_rx/bmc000.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_viterbi_tx_rx