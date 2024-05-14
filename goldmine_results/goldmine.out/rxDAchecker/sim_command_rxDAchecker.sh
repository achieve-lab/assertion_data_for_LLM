#!/bin/bash

iverilog -g2001 -osimv -s rxDAchecker_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/rxDAchecker/rxDAchecker_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_10g_ethernet_mac/rxDAchecker.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_10g_ethernet_mac