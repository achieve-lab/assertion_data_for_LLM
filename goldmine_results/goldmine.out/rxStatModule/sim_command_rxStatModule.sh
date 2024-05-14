#!/bin/bash

iverilog -g2001 -osimv -s rxStatModule_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/rxStatModule/rxStatModule_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_10g_ethernet_mac/rxStatModule.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_10g_ethernet_mac