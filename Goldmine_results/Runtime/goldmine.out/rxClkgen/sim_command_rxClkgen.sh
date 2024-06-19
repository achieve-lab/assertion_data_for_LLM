#!/bin/bash

iverilog -g2001 -osimv -s rxClkgen_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/rxClkgen/rxClkgen_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_10g_ethernet_mac/rxClkgen.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_10g_ethernet_mac