#!/bin/bash

iverilog -g2001 -osimv -s bus_arb_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/bus_arb/bus_arb_bench.v /data/vpulav2/Work/GoldMine/verilog/testing-verification_systemverilog_directed_test_bench/arb.v  -I/data/vpulav2/Work/GoldMine/verilog/testing-verification_systemverilog_directed_test_bench