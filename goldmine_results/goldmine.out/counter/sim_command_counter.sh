#!/bin/bash

iverilog -g2001 -osimv -s counter_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/counter/counter_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_10g_ethernet_mac/counter.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_10g_ethernet_mac