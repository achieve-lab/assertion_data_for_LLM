#!/bin/bash

iverilog -g2001 -osimv -s eth_shiftreg_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_shiftreg/eth_shiftreg_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_shiftreg.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_100_mb-s_ethernet_mac_layer_switch