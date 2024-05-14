#!/bin/bash

iverilog -g2001 -osimv -s bmc001_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/bmc001/bmc001_bench.v /data/vpulav2/Work/GoldMine/verilog/arithmetic_core_viterbi_tx_rx/bmc001.v  -I/data/vpulav2/Work/GoldMine/verilog/arithmetic_core_viterbi_tx_rx