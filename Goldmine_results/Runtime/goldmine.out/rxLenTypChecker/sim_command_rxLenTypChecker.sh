#!/bin/bash

iverilog -g2001 -osimv -s rxLenTypChecker_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/rxLenTypChecker/rxLenTypChecker_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_10g_ethernet_mac/rxLenTypChecker.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_10g_ethernet_mac