#!/bin/bash

iverilog -g2001 -osimv -s eth_random_bench /data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_random/eth_random_bench.v /data/vpulav2/Work/GoldMine/verilog/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_random.v  -I/data/vpulav2/Work/GoldMine/verilog/communication_controller_100_mb-s_ethernet_mac_layer_switch