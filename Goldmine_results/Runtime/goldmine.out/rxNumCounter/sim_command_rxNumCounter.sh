#!/bin/bash

iverilog -g2001 -osimv -s rxNumCounter_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/rxNumCounter/rxNumCounter_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_10g_ethernet_mac/rxNumCounter.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_10g_ethernet_mac