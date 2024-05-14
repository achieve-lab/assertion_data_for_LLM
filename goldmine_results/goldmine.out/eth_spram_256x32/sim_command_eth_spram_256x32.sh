#!/bin/bash

iverilog -g2001 -osimv -s eth_spram_256x32_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_spram_256x32/eth_spram_256x32_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_spram_256x32.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_100_mb-s_ethernet_mac_layer_switch